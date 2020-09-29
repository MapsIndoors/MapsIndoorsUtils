# Inputs.
aws_ak="$1"                                                              # access key
aws_sk="$2"                                                              # secret key
bucket=`printf $3 | awk 'BEGIN{FS="@"}{print $1}'`                       # bucket name
region=`printf $3 | awk 'BEGIN{FS="@"}{print ($2==""?"eu-west-1":$2)}'`  # region name
srcfile="$4"                                                             # source file
targfile=`echo "$5" | sed "s/\/$/\/$(basename $srcfile)/"`            # target file
acl=${6:-'public-read'}                                                  # s3 perms
mime=${7:-"`guessmime "$srcfile"`"}                                      # mime type
md5=`openssl md5 -binary "$srcfile" | openssl base64`


# Create signature if not public upload.
key_and_sig_args=''
if [ "$aws_ak" != "" ] && [ "$aws_sk" != "" ]; then

    # Need current and file upload expiration date. Handle GNU and BSD date command style to get tomorrow's date.
    date=`date -u +%Y%m%dT%H%M%SZ`
    expdate=`if ! date -v+1d +%Y-%m-%d 2>/dev/null; then date -d tomorrow +%Y-%m-%d; fi`
    expdate_s=`printf $expdate | sed s/-//g` # without dashes, as we need both formats below
    service='s3'

    # Generate policy and sign with secret key following AWS Signature version 4, below
    p=$(cat <<POLICY | openssl base64
{ "expiration": "${expdate}T12:00:00.000Z",
  "conditions": [
    {"acl": "$acl" },
    {"bucket": "$bucket" },
    ["starts-with", "\$key", ""],
    ["starts-with", "\$content-type", ""],
    ["content-length-range", 1, `ls -l -H "$srcfile" | awk '{print $5}' | head -1`],
    {"content-md5": "$md5" },
    {"x-amz-date": "$date" },
    {"x-amz-credential": "$aws_ak/$expdate_s/$region/$service/aws4_request" },
    {"x-amz-algorithm": "AWS4-HMAC-SHA256" }
  ]
}
POLICY
    )

    # AWS4-HMAC-SHA256 signature
    s=`printf "$expdate_s"   | openssl sha256 -hmac "AWS4$aws_sk"           -hex | sed 's/(stdin)= //'`
    s=`printf "$region"      | openssl sha256 -mac HMAC -macopt hexkey:"$s" -hex | sed 's/(stdin)= //'`
    s=`printf "$service"     | openssl sha256 -mac HMAC -macopt hexkey:"$s" -hex | sed 's/(stdin)= //'`
    s=`printf "aws4_request" | openssl sha256 -mac HMAC -macopt hexkey:"$s" -hex | sed 's/(stdin)= //'`
    s=`printf "$p"           | openssl sha256 -mac HMAC -macopt hexkey:"$s" -hex | sed 's/(stdin)= //'`

    key_and_sig_args="-F X-Amz-Credential=$aws_ak/$expdate_s/$region/$service/aws4_request -F X-Amz-Algorithm=AWS4-HMAC-SHA256 -F X-Amz-Signature=$s -F X-Amz-Date=${date}"
fi


# Upload. Supports anonymous upload if bucket is public-writable, and keys are set to ''.
echo "Uploading: $srcfile ($mime) to $bucket:$targfile"
curl                            \
    -# -k -v                       \
    -F key=$targfile            \
    -F acl=$acl                 \
    $key_and_sig_args           \
    -F "Policy=$p"              \
    -F "Content-MD5=$md5"       \
    -F "Content-Type=$mime"     \
    -F "file=@$srcfile"         \
    https://${bucket}.s3.amazonaws.com/ | cat # pipe through cat so curl displays upload progress bar, *and* response

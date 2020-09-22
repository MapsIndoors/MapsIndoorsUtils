
  echo "_____________________________________________________________________________"

  path=$1
  file=$2
  aws_path=$3
  S3KEY=$4
  S3SECRET=$5
  bucket='foliastorage'
  date=$(date +"%a, %d %b %Y %T %z")
  acl="x-amz-acl:public-read"
  content_type="application/javascript";
  content_encoding=""
 if [ ${file: -3} == ".gz" ] 
  then
    echo "content_encoding set to gzip"
    content_encoding="gzip"
  fi
  string="PUT\n\n$content_type\n$date\n$acl\n/$bucket$aws_path$file"
  signature=$(echo -en "${string}" | openssl sha1 -hmac "${S3SECRET}" -binary | base64)
  
  echo "Transferring $path/$file to https://$bucket.s3.amazonaws.com$aws_path$file"
  curl -v -X PUT -T "$path/$file" \
    -H "Host: $bucket.s3.amazonaws.com" \
    -H "Date: $date" \
    -H "Content-Type: $content_type" \
	-H "Content-Encode : $content_encoding " \
    -H "$acl" \
    -H "Authorization: AWS ${S3KEY}:$signature" \
    "https://$bucket.s3.amazonaws.com$aws_path$file"


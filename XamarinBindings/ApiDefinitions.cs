using Foundation;

namespace Binding
{
	[Static]
	[Verify (ConstantsInterfaceAssociation)]
	partial interface Constants
	{
		// extern double MapsIndoorsUtilsXamarinIOSVersionNumber;
		[Field ("MapsIndoorsUtilsXamarinIOSVersionNumber", "__Internal")]
		double MapsIndoorsUtilsXamarinIOSVersionNumber { get; }

		// extern const unsigned char [] MapsIndoorsUtilsXamarinIOSVersionString;
		[Field ("MapsIndoorsUtilsXamarinIOSVersionString", "__Internal")]
		byte[] MapsIndoorsUtilsXamarinIOSVersionString { get; }
	}
}

using System;
using Foundation;
using MapsIndoorsUtils;
using ObjCRuntime;
using UIKit;

namespace Binding
{
	// @interface BagdePosition : NSObject
	[BaseType (typeof(NSObject))]
	[DisableDefaultCtor]
	interface BagdePosition
	{
		// @property (readonly, nonatomic, strong, class) BagdePosition * _Nonnull topRight;
		[Static]
		[Export ("topRight", ArgumentSemantic.Strong)]
		BagdePosition TopRight { get; }

		// @property (readonly, nonatomic, strong, class) BagdePosition * _Nonnull topLeft;
		[Static]
		[Export ("topLeft", ArgumentSemantic.Strong)]
		BagdePosition TopLeft { get; }

		// @property (readonly, nonatomic, strong, class) BagdePosition * _Nonnull bottomRight;
		[Static]
		[Export ("bottomRight", ArgumentSemantic.Strong)]
		BagdePosition BottomRight { get; }

		// @property (readonly, nonatomic, strong, class) BagdePosition * _Nonnull bottomLeft;
		[Static]
		[Export ("bottomLeft", ArgumentSemantic.Strong)]
		BagdePosition BottomLeft { get; }

		// -(instancetype _Nonnull)initWithX:(CGFloat)x y:(CGFloat)y __attribute__((objc_designated_initializer));
		[Export ("initWithX:y:")]
		[DesignatedInitializer]
		IntPtr Constructor (nfloat x, nfloat y);
	}

	// @interface BagdedIcon : NSObject
	[BaseType (typeof(NSObject))]
	interface BagdedIcon
	{
		// +(UIImage * _Nullable)bagdedIconWithConfig:(BagdedIconConfiguration * _Nonnull)config __attribute__((warn_unused_result));
		[Static]
		[Export ("bagdedIconWithConfig:")]
		[return: NullAllowed]
		UIImage BagdedIconWithConfig (BagdedIconConfiguration config);
	}

	// @interface BagdedIconConfiguration : NSObject
	[BaseType (typeof(NSObject))]
	[DisableDefaultCtor]
	interface BagdedIconConfiguration
	{
		// @property (readonly, nonatomic, strong) UIImage * _Nonnull originalIcon;
		[Export ("originalIcon", ArgumentSemantic.Strong)]
		UIImage OriginalIcon { get; }

		// @property (readonly, copy, nonatomic) NSString * _Nonnull badgeText;
		[Export ("badgeText")]
		string BadgeText { get; }

		// @property (nonatomic, strong) UIColor * _Nonnull badgeTextColor;
		[Export ("badgeTextColor", ArgumentSemantic.Strong)]
		UIColor BadgeTextColor { get; set; }

		// @property (nonatomic) CGFloat badgePadding;
		[Export ("badgePadding")]
		nfloat BadgePadding { get; set; }

		// @property (nonatomic, strong) UIColor * _Nonnull badgeBackgroundColor;
		[Export ("badgeBackgroundColor", ArgumentSemantic.Strong)]
		UIColor BadgeBackgroundColor { get; set; }

		// @property (nonatomic, strong) UIFont * _Nonnull badgeFont;
		[Export ("badgeFont", ArgumentSemantic.Strong)]
		UIFont BadgeFont { get; set; }

		// @property (nonatomic, strong) BagdePosition * _Nonnull bagdePosition;
		[Export ("bagdePosition", ArgumentSemantic.Strong)]
		BagdePosition BagdePosition { get; set; }

		// -(instancetype _Nonnull)initWithOriginalIcon:(UIImage * _Nonnull)originalIcon badgeText:(NSString * _Nonnull)badgeText __attribute__((objc_designated_initializer));
		[Export ("initWithOriginalIcon:badgeText:")]
		[DesignatedInitializer]
		IntPtr Constructor (UIImage originalIcon, string badgeText);
	}
}

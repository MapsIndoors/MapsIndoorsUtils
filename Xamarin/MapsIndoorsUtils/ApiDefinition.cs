using System;
using CoreGraphics;
using Foundation;
using ObjCRuntime;
using UIKit;

namespace Binding
{
	// @interface MPBagdePosition : NSObject
	[BaseType (typeof(NSObject))]
	interface MPBagdePosition
	{
		// @property (readonly, nonatomic, strong, class) MPBagdePosition * _Nonnull topRight;
		[Static]
		[Export ("topRight", ArgumentSemantic.Strong)]
		MPBagdePosition TopRight { get; }

		// @property (readonly, nonatomic, strong, class) MPBagdePosition * _Nonnull topLeft;
		[Static]
		[Export ("topLeft", ArgumentSemantic.Strong)]
		MPBagdePosition TopLeft { get; }

		// @property (readonly, nonatomic, strong, class) MPBagdePosition * _Nonnull bottomRight;
		[Static]
		[Export ("bottomRight", ArgumentSemantic.Strong)]
		MPBagdePosition BottomRight { get; }

		// @property (readonly, nonatomic, strong, class) MPBagdePosition * _Nonnull bottomLeft;
		[Static]
		[Export ("bottomLeft", ArgumentSemantic.Strong)]
		MPBagdePosition BottomLeft { get; }

		// @property (readonly, nonatomic) CGPoint point;
		[Export ("point")]
		CGPoint Point { get; }

		// -(instancetype _Nonnull)initWithX:(CGFloat)x y:(CGFloat)y;
		[Export ("initWithX:y:")]
		IntPtr Constructor (nfloat x, nfloat y);
	}

	// @interface MPBadgedIconConfiguration : NSObject
	[BaseType (typeof(NSObject))]
	interface MPBadgedIconConfiguration
	{
		// @property (readonly, nonatomic, strong) UIImage * _Nonnull originalIcon;
		[Export ("originalIcon", ArgumentSemantic.Strong)]
		UIImage OriginalIcon { get; }

		// @property (readonly, nonatomic, strong) NSString * _Nonnull badgeText;
		[Export ("badgeText", ArgumentSemantic.Strong)]
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

		// @property (nonatomic, strong) MPBagdePosition * _Nonnull bagdePosition;
		[Export ("bagdePosition", ArgumentSemantic.Strong)]
		MPBagdePosition BagdePosition { get; set; }

		// -(instancetype _Nonnull)initWithOriginalIcon:(UIImage * _Nonnull)originalIcon badgeText:(NSString * _Nonnull)badgeText;
		[Export ("initWithOriginalIcon:badgeText:")]
		IntPtr Constructor (UIImage originalIcon, string badgeText);
	}

	// @interface MPBadgedIcon : NSObject
	[BaseType (typeof(NSObject))]
	interface MPBadgedIcon
	{
		// +(UIImage * _Nonnull)badgedIcon:(MPBadgedIconConfiguration * _Nonnull)config;
		[Static]
		[Export ("badgedIcon:")]
		UIImage BadgedIcon (MPBadgedIconConfiguration config);
	}
}

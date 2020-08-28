//
//  MPBadgedIconConfiguration.m
//  MapsIndoorsUtilsXamarinIOS
//
//  Created by Daniel Nielsen on 28/08/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

#import "MPBadgedIconConfiguration.h"

@interface MPBagdePosition ( )

@property (nonatomic, readwrite) CGPoint point;

@end

@implementation MPBagdePosition

+ (MPBagdePosition *)topLeft {
    return [[MPBagdePosition alloc] initWithX:0 y:0];
}

+ (MPBagdePosition *)topRight {
    return [[MPBagdePosition alloc] initWithX:0 y:0];
}

+ (MPBagdePosition *)bottomLeft {
    return [[MPBagdePosition alloc] initWithX:0 y:0];
}

+ (MPBagdePosition *)bottomRight {
    return [[MPBagdePosition alloc] initWithX:0 y:0];
}

- (instancetype) initWithX:(CGFloat)x y:(CGFloat)y {
    self = [super init];
    
    self.point = CGPointMake(x, y);
    
    return self;
}

@end

@implementation MPBadgedIconConfiguration

- (instancetype) initWithOriginalIcon:(UIImage*)originalIcon badgeText:(NSString*)badgeText {
    self = [super init];
    _originalIcon = originalIcon;
    _badgeText = badgeText;
    _badgeTextColor = [UIColor whiteColor];
    _badgePadding = 2;
    _badgeBackgroundColor = [UIColor darkGrayColor];
    _badgeFont = [UIFont systemFontOfSize: 16];
    _bagdePosition = MPBagdePosition.topRight;
    return self;
}

@end

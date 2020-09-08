//
//  MPBadgedIcon.m
//  MapsIndoorsUtilsXamarinIOS
//
//  Created by Daniel Nielsen on 28/08/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

#import "MPBadgedIcon.h"
#import <MapsIndoorsUtils/MapsIndoorsUtils-Swift.h>

@implementation MPBadgedIcon

+ (UIImage*)badgedIcon:(MPBadgedIconConfiguration*)config {
    
    BagdedIconConfiguration* swiftConfig = [[BagdedIconConfiguration alloc] initWithOriginalIcon:config.originalIcon badgeText:config.badgeText];
    
    swiftConfig.badgeTextColor = config.badgeTextColor;
    swiftConfig.badgePadding = config.badgePadding;
    swiftConfig.badgeBackgroundColor = config.badgeBackgroundColor;
    swiftConfig.badgeFont = config.badgeFont;
    swiftConfig.bagdePosition = [[BagdePosition alloc] initWithX:config.bagdePosition.point.x y:config.bagdePosition.point.y];
    
    return [BagdedIcon bagdedIconWithConfig:swiftConfig];
}

@end

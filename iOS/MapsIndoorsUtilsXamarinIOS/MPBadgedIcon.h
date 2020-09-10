//
//  MPBadgedIcon.h
//  MapsIndoorsUtilsXamarinIOS
//
//  Created by Daniel Nielsen on 28/08/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MPBadgedIconConfiguration.h"

NS_ASSUME_NONNULL_BEGIN

@interface MPBadgedIcon : NSObject

+ (UIImage*)badgedIcon:(MPBadgedIconConfiguration*)config;

@end

NS_ASSUME_NONNULL_END

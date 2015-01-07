//
//  LoggingConfig.h
//  Test
//
//  Created by Peng Gu on 12/16/14.
//  Copyright (c) 2014 Peng Gu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Aspects.h>


#define GLLoggingPageImpression @"GLLoggingPageImpression"
#define GLLoggingTrackedEvents @"GLLoggingTrackedEvents"
#define GLLoggingEventName @"GLLoggingEventName"
#define GLLoggingEventSelectorName @"GLLoggingEventSelectorName"
#define GLLoggingEventHandlerBlock @"GLLoggingEventHandlerBlock"

@interface GLLogging : NSObject

+ (void)setupWithConfiguration:(NSDictionary *)configs;

@end

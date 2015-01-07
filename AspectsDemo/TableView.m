//
//  TableView.m
//  Test
//
//  Created by Peng Gu on 11/24/14.
//  Copyright (c) 2014 Peng Gu. All rights reserved.
//

#import "TableView.h"

@implementation TableView

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    if (point.y < 0) {
        return NO;
    }
    return YES;
}

@end

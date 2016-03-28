//
//  AlertFunction.m
//  ChessAndAlert
//
//  Created by Quang Dai on 3/28/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "AlertFunction.h"

@implementation AlertFunction

- (void) Delay
{
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector: @selector(FunctionX) userInfo:nil repeats:NO];
}

- (void) FunctionX{
    NSLog(@"Bat duoc roi");
}


@end

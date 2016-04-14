//
//  Queen.m
//  Ex1Chess
//
//  Created by Quang Dai on 4/2/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "Queen.h"

@implementation Queen
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.type = QUEEN;
    }
    return self;
}

- (BOOL) isMoveValid:(NSMutableArray *)arrChess;
{
    NSLog(@"Queen isMoveValid()");
    return YES;
}
@end

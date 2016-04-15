//
//  Board.m
//  Ex1Chess
//
//  Created by Quang Dai on 4/3/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "Board.h"

@implementation Board

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.arrButton = [NSMutableArray array];
        for (int i = 0; i < 8; i++) {
            [self.arrButton addObject:[self valueForKey:[NSString stringWithFormat:@"btn%d", i]]];
        }
    }
    return self;
}
@end

//
//  Queen.h
//  Ex1Chess
//
//  Created by Quang Dai on 4/2/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pieces.h"
@interface Queen : Pieces
- (BOOL) isMoveValid:(NSMutableArray *)arrChess;
@end

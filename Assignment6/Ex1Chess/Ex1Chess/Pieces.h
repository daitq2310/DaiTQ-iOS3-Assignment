//
//  Pieces.h
//  Ex1Chess
//
//  Created by Quang Dai on 4/2/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Pieces : UIButton

@property int positionX;
@property int positionY;
- (BOOL) isMoveValid:(NSMutableArray *)arrChess;

typedef enum{
    CHESS_WHITE = 0,
    CHESS_BLACK = 1
} CHESS_COLOR;

typedef enum{
    KING = 1,
    QUEEN = 2,
    BISHOP = 3,
    KNIGHT = 4,
    ROOK = 5,
    PAWN = 6
} CHESS_TYPE;

@property CHESS_TYPE type;
@property CHESS_COLOR color;

- (void) MoveABle;

@end

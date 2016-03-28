//
//  Pieces.h
//  ChessAndAlert
//
//  Created by Quang Dai on 3/28/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pieces : NSObject
@property int positionX;
@property int positionY;
- (void) move;
- (void) eat;
@end

//
//  ViewController.m
//  ChessAndAlert
//
//  Created by Quang Dai on 3/28/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "Pieces.h"
#import "King.h"
#import "Rook.h"
#import "Pawn.h"
#import "AlertFunction.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Pieces *pieces = [[Pieces alloc] init];
    pieces.positionX = 0;
    pieces.positionY = 0;
    NSLog(@"Position of Pieces: (%d, %d)", pieces.positionX, pieces.positionY);
    [pieces move];
    [pieces eat];
    
    King *king = [[King alloc] init];
    king.positionX = 4;
    king.positionY = 0;
    NSLog(@"Position of King: (%d, %d)", king.positionX, king.positionY);
    [king move];
    [king eat];
    
    Rook *rook = [[Rook alloc] init];
    rook.positionX = 5;
    rook.positionY = 6;
    NSLog(@"Position of Rook: (%d, %d)", rook.positionX, rook.positionY);
    [rook move];
    [rook eat];
    
    Pawn *pawn = [[Pawn alloc] init];
    pawn.positionX = 1;
    pawn.positionY = 8;
    NSLog(@"Position of Pawn: (%d, %d)", pawn.positionX, pawn.positionY);
    [pawn move];
    [pawn eat];
    
    AlertFunction *alertFunction = [[AlertFunction alloc] init];
    [alertFunction Delay];

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

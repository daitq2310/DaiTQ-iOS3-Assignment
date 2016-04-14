//
//  ViewController.m
//  Ex1Chess
//
//  Created by Quang Dai on 4/2/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "ChessCell.h"
#import "Queen.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (UIView *view in self.viewChess.subviews){
        if ([view isKindOfClass:[ChessCell class]]){
            [((ChessCell *) view) addTarget:self action:@selector(btnPiecesClicked:) forControlEvents:UIControlEventTouchUpInside];
        }
         else if ([view isKindOfClass:[Queen class]]){
            [((Queen *) view) addTarget:self action:@selector(btnPiecesClicked:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnChessCellClicked:(UIButton *)sender {
    
}

- (IBAction)btnPiecesClicked:(UIButton *)sender {
    sender.layer.borderColor = [UIColor redColor].CGColor;
    sender.layer.borderWidth = 2.0f;
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btnPieces.center = sender.center;
    } completion:^(BOOL finished) {
        sender.layer.borderColor = [UIColor clearColor].CGColor;
    }];
}

@end

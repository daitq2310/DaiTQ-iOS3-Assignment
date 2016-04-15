//
//  ViewController.m
//  Ex1Chess
//
//  Created by Quang Dai on 4/2/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "ChessCell.h"
#import "Pieces.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (UIView *view in self.viewChess.subviews){
        if ([view isKindOfClass:[ChessCell class]]){
            [((ChessCell *) view) addTarget:self action:@selector(btnCellClicked:) forControlEvents:UIControlEventTouchUpInside];
        }
        if ([view isKindOfClass:[Pieces class]]){
            [((Pieces *) view) addTarget:self action:@selector(btnCellClicked:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnCellClicked:(UIButton *)sender {
    sender.layer.borderColor = [UIColor redColor].CGColor;
    sender.layer.borderWidth = 2.0;
    [UIView animateWithDuration:1.0 delay:0.2 options:UIViewAnimationOptionCurveLinear animations:^{
        self.btnQueen.center = sender.center;
    } completion:^(BOOL finished) {
        sender.layer.borderColor = [UIColor clearColor].CGColor;
        sender.layer.borderWidth = 0.0;
    }];
}
@end

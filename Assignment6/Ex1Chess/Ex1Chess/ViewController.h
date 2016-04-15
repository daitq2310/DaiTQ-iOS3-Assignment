//
//  ViewController.h
//  Ex1Chess
//
//  Created by Quang Dai on 4/2/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController :  UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btnCell;
- (IBAction)btnCellClicked:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnQueen;
@property (weak, nonatomic) IBOutlet UIView *viewChess;

@end

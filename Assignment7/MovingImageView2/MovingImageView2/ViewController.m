//
//  ViewController.m
//  MovingImageView2
//
//  Created by Quang Dai on 4/21/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor greenColor];
    _imgView.image = [UIImage imageNamed:@"avt3.jpg"];
    
    _imgView.frame = CGRectMake(0, 0, 200, 200);
    _imgView.center = _imgView.superview.center;
    
    _imgView.contentMode = UIViewContentModeScaleAspectFill;
    _imgView.layer.cornerRadius = _imgView.frame.size.width/2;
    _imgView.layer.masksToBounds = YES;
    _imgView.layer.borderColor = [UIColor redColor].CGColor;
    _imgView.layer.borderWidth = 2.0;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];

    if (CGRectContainsPoint(_imgView.frame, touchPoint)){
        _imgView.center = touchPoint;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

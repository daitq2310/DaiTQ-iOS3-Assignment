//
//  ViewController.m
//  DispatchForFan
//
//  Created by Quang Dai on 5/21/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setImvFan];
    [self dispatch];
}

- (void) setImvFan {
    _imvFan.image = [UIImage imageNamed:@"fan.png"];
}

- (void) animation {
    [UIView animateWithDuration:0.4f delay:0.f options:UIViewAnimationOptionCurveLinear animations:^{
        _imvFan.transform = CGAffineTransformMakeRotation(_rotation += M_PI_2);
    } completion:^(BOOL finished) {
        [self animation];
    }];
}

- (void) dispatch {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self animation];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

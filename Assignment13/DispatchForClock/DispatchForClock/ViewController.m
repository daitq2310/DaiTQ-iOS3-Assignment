//
//  ViewController.m
//  DispatchForClock
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
    //[self animationSecond];
//    [self animationMinute];
//    [self animationHour];
    [self dispatch];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) animationSecond {
    [UIView animateWithDuration:60.0f delay:0.f options:UIViewAnimationOptionCurveLinear animations:^{
        _imvSecond.transform = CGAffineTransformMakeRotation(_rotationSecond += M_PI_2);
    } completion:^(BOOL finished) {
        [self animationSecond];
    }];
}

- (void) animationMinute {
    [UIView animateWithDuration:20.0f delay:0.f options:UIViewAnimationOptionCurveLinear animations:^{
        _imvMinute.transform = CGAffineTransformMakeRotation(_rotationMinute += M_PI_2);
    } completion:^(BOOL finished) {
        //[self animationMinute];
    }];
}

- (void) animationHour {
    [UIView animateWithDuration:10.0f delay:0.f options:UIViewAnimationOptionCurveLinear animations:^{
        _imvHour.transform = CGAffineTransformMakeRotation(_rotationHour +=M_PI_2);
    } completion:^(BOOL finished) {
        [self animationHour];
    }];
}

- (void) dispatch {
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [NSThread sleepForTimeInterval:1.0f];
//        while (true) {
//            
//            [self animationSecond];
//        }
//    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while (true){
            NSLog(@"22222222");
            [NSThread sleepForTimeInterval:1.0f];
            NSLog(@"11111111");
            [self animationSecond];
            NSLog(@"33333333");
        }
    });
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        while(true) {
//            [NSThread sleepForTimeInterval:6.0f];
//
//            
//        }
//    });
}


@end

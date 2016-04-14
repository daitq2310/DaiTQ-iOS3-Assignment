//
//  ViewController.m
//  Fan
//
//  Created by Quang Dai on 4/14/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.btnSpeed setSelectedSegmentIndex:0];
}

- (double) calculatedSpeed : (double)speed{
    self.speed = speed;
    return (self.rotation += 45) * self.speed;
}
- (void) animation{
    [UIView animateWithDuration:3.0 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
        if (self.btnSpeed.selectedSegmentIndex == 0) {
            self.speed = 0;
            self.imgFan.transform = CGAffineTransformMakeRotation([self calculatedSpeed:self.speed]);
        } else if (self.btnSpeed.selectedSegmentIndex == 1){
            self.speed = 1;
            self.imgFan.transform = CGAffineTransformMakeRotation([self calculatedSpeed:self.speed]);
        } else if (self.btnSpeed.selectedSegmentIndex == 2){
            self.speed = 2;
            self.imgFan.transform = CGAffineTransformMakeRotation([self calculatedSpeed:self.speed]);
        } else if (self.btnSpeed.selectedSegmentIndex == 3){
            self.speed = 3;
            self.imgFan.transform = CGAffineTransformMakeRotation([self calculatedSpeed:self.speed]);
        }
    } completion:^(BOOL finished) {
        [self animation];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSpeedChangedValue:(id)sender {
    [self animation];
}

@end

//
//  ViewController.m
//  CustomSlider
//
//  Created by Quang Dai on 4/12/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
#pragma mark - Custom Thumb Image
    CGAffineTransform trans = CGAffineTransformMakeRotation(M_PI * 1.5);
    self.btnSlider.transform = trans;
    self.btnSlider2.transform = trans;
    //    float number = [self.btnSlider2 value];
    //    self.value1 = (int)(number * 100);
    self.lblValue.text = [NSString stringWithFormat:@"%d", self.value1];
    [self.btnSlider2 setThumbImage:[UIImage imageNamed:@"ThumbT01.png"] forState:UIControlStateNormal];
    [self.btnSlider2 setThumbImage:[UIImage imageNamed:@"ThumbT02.png"] forState:UIControlStateHighlighted];
    
    //    self.btnSlider2.minimumTrackTintColor = [UIColor blueColor];
    //    self.btnSlider2.maximumTrackTintColor = [UIColor redColor];
    
#pragma mark - Custom Min-Max Image
    UIImage *botImage = [UIImage imageNamed:@"bot.png"];
    UIImage *topImage = [UIImage imageNamed:@"top.png"];
    topImage = [topImage stretchableImageWithLeftCapWidth:0 topCapHeight:0];
    [self.btnSlider2 setMaximumTrackImage:topImage forState:UIControlStateNormal];
    botImage = [botImage stretchableImageWithLeftCapWidth:0 topCapHeight:0];
    [self.btnSlider2 setMinimumTrackImage:botImage forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnSliderChangedValue:(id)sender {
}

- (IBAction)btnSlider2ChangedValue:(id)sender {
    
    //    if (sender == self.btnSlider2) {
    //        float number = [self.btnSlider2 value];
    //        self.value1 = (int)(number * 100);
    //        self.lblValue.text = [NSString stringWithFormat:@"%d", self.value1];
    //    }
    
#pragma mark - Convert Value of slider to Integer
    float number = [self.btnSlider2 value];
    self.value1 = (int)(number * 100);
    
    //Get ImageView
    UIImageView *handleView = [self.btnSlider2.subviews lastObject];
    
#pragma mark - Display slider to Thumb Image
    UILabel *label = (UILabel*)[handleView viewWithTag:101];
    if (label == nil) {
        label = [[UILabel alloc] initWithFrame:handleView.bounds];
        label.tag = 101;
        CGAffineTransform trans = CGAffineTransformMakeRotation(M_PI * -1.5);
        label.backgroundColor = [UIColor clearColor];
        label.transform = trans;
        label.textAlignment = NSTextAlignmentCenter;
        [handleView addSubview:label];
    }
    
    // Update the slider value
    //[label setFont:[UIFont fontWithName:@"familyNames" size:10.0]];
    label.textColor = [UIColor whiteColor];
    label.text = [NSString stringWithFormat:@"%d", self.value1];
}


@end

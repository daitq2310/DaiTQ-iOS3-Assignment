//
//  ViewController.m
//  CustomImageView
//
//  Created by Quang Dai on 4/13/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    
    self.imgView.image = [UIImage imageNamed:@"avt2.jpg"];
    
    self.imgView.frame = CGRectMake(0, 0, 200, 200);
    self.imgView.center = self.imgView.superview.center;
    
    self.imgView.contentMode = UIViewContentModeScaleAspectFill;
    self.imgView.layer.cornerRadius = self.imgView.frame.size.width/2;
    self.imgView.layer.masksToBounds = YES;
    
//    self.view.frame = CGRectMake(self.imgView.frame.origin.x, self.imgView.frame.origin.y, 300, 300);
//    self.view.center = self.view.superview.center;
//    
//    self.view.layer.cornerRadius = self.imgView.frame.size.width/2;
//    self.view.layer.masksToBounds = YES;
    //Round cornered ImageView
    self.imgView.layer.borderColor = [UIColor redColor].CGColor;
    self.imgView.layer.borderWidth = 2.0;
    
//    self.view.backgroundColor = [UIColor lightGrayColor];
//    UIImage *image = [UIImage imageNamed:@"avt1.jpg"];
//    
//    CGRect bounds;
//    //bounds.origin = CGPointZero;
//    bounds.size = [[UIScreen mainScreen] bounds].size;
//    
//    self.imgView.bounds = bounds;
//    self.imgView.image = image;
//    self.imgView.frame = CGRectMake(0, 0, 200,200);
//    self.imgView.center = self.imgView.superview.center;
//        self.imgView.contentMode = UIViewContentModeScaleAspectFill;
//        self.imgView.layer.cornerRadius = self.imgView.frame.size.width/2;
//        self.imgView.layer.masksToBounds = YES;

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    //UIGraphicsBeginImageContext(newSize);
    // In next line, pass 0.0 to use the current device's pixel scaling factor (and thus account for Retina resolution).
    // Pass 1.0 to force exact pixel size.
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end

//
//  ViewController.m
//  OrientationAndShake
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
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChanged:) name:UIDeviceOrientationDidChangeNotification object:nil];
    
}

#pragma mark - Detect device orientation
- (void) orientationChanged : (NSNotification *) notification {
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    if (orientation == UIDeviceOrientationPortrait) {
        NSLog(@"Portrait");
        _lblDetectOrientationChanged.text = @"Portrait";
    } else if (orientation == UIDeviceOrientationLandscapeLeft) {
        NSLog(@"LandscapeLeft");
        _lblDetectOrientationChanged.text = @"LandscapeLeft";
        _lblDetectOrientationChanged.text = @"LandscapeLeft";
    } else if (orientation == UIDeviceOrientationLandscapeRight) {
        NSLog(@"LandscapeRight");
        _lblDetectOrientationChanged.text = @"LandscapeRight";
    } else if (orientation == UIDeviceOrientationPortraitUpsideDown){
        NSLog(@"PortraitUpsideDown");
        _lblDetectOrientationChanged.text = @"PortraitUpsideDown";
    }
}

#pragma mark - Detect shake motion event
- (BOOL)canBecomeFirstResponder{
    return YES;
}

- (void)viewDidAppear:(BOOL)animated{
    [self becomeFirstResponder];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake){
        NSLog(@"DEVICE SHAKED");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"SHAKE DETECTED" message:@"Device Shaked" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

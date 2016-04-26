//
//  ViewController.m
//  PinchAndRotation
//
//  Created by Quang Dai on 4/26/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imgView.userInteractionEnabled = YES;
    [self initPinch];
    [self initRotation];
}

- (void) initPinch {
    _pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchDid:)];
    [_imgView addGestureRecognizer:_pinch];
}

- (void) initRotation {
    _rotation = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotationDid:)];
    _rotation.delegate = self;
    [_imgView addGestureRecognizer:_rotation];
}

- (void) pinchDid : (UIPinchGestureRecognizer *) pinchRecognizer {
    pinchRecognizer.view.transform = CGAffineTransformScale(pinchRecognizer.view.transform, pinchRecognizer.scale, pinchRecognizer.scale);
    _pinch.delegate = self;
    pinchRecognizer.scale = 1;
}

- (void)rotationDid : (UIRotationGestureRecognizer *) rotationRecognizer {
    rotationRecognizer.view.transform = CGAffineTransformRotate(rotationRecognizer.view.transform, rotationRecognizer.rotation);
    rotationRecognizer.rotation = 0;
}

- (BOOL)gestureRecognizer:(UIPinchGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIRotationGestureRecognizer *)otherGestureRecognizer{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

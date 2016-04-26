//
//  ViewController.m
//  SwipeGesture
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
    _lblStatus.text = @"ABCXYZ";
    [self initUpSwipe];
    [self initDownSwipe];
    [self initRightSwipe];
    [self initLeftSwipe];
}

- (void) initUpSwipe {
    _upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget: self action: @selector(swipeDid:)];
    _upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    self.view.userInteractionEnabled = YES;
    [self.view addGestureRecognizer:_upSwipe];
}

- (void) initDownSwipe {
    _downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget: self action: @selector(swipeDid:)];
    _downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    self.view.userInteractionEnabled = YES;
    [self.view addGestureRecognizer:_downSwipe];
}

- (void) initRightSwipe {
    _rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget: self action: @selector(swipeDid:)];
    _rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    self.view.userInteractionEnabled = YES;
    [self.view addGestureRecognizer:_rightSwipe];
}

- (void) initLeftSwipe {
    _leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget: self action: @selector(swipeDid:)];
    _leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    self.view.userInteractionEnabled = YES;
    [self.view addGestureRecognizer:_leftSwipe];
}

- (void) swipeDid : (UISwipeGestureRecognizer *) swipeRecognizer {
    switch (swipeRecognizer.direction) {
        case UISwipeGestureRecognizerDirectionUp:
            _lblStatus.text = @"UP";
            NSLog(@"Swipe UP");
            break;
            
        case UISwipeGestureRecognizerDirectionDown:
            _lblStatus.text = @"DOWN";
            NSLog(@"Swipe Down");
            break;
            
        case UISwipeGestureRecognizerDirectionLeft:
            _lblStatus.text = @"LEFT";
            NSLog(@"Swipe Left");
            break;
            
        case UISwipeGestureRecognizerDirectionRight:
            _lblStatus.text = @"RIGHT";
            NSLog(@"Swipe Right");
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

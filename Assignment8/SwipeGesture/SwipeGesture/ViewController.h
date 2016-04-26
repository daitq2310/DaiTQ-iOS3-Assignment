//
//  ViewController.h
//  SwipeGesture
//
//  Created by Quang Dai on 4/26/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;
@property UISwipeGestureRecognizer *upSwipe;
@property UISwipeGestureRecognizer *downSwipe;
@property UISwipeGestureRecognizer *rightSwipe;
@property UISwipeGestureRecognizer *leftSwipe;
@end


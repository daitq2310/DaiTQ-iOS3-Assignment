//
//  ViewController.h
//  PinchAndRotation
//
//  Created by Quang Dai on 4/26/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property UIPinchGestureRecognizer *pinch;
@property UIRotationGestureRecognizer *rotation;

@end


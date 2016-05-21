//
//  ViewController.h
//  DispatchForClock
//
//  Created by Quang Dai on 5/21/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imvClock;
@property (weak, nonatomic) IBOutlet UIImageView *imvSecond;
@property (weak, nonatomic) IBOutlet UIImageView *imvMinute;
@property (weak, nonatomic) IBOutlet UIImageView *imvHour;
@property (weak, nonatomic) IBOutlet UIImageView *imvCenter;
@property double rotationSecond;
@property double rotationMinute;
@property double rotationHour;

@end


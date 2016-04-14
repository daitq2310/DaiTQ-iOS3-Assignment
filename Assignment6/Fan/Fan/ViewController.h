//
//  ViewController.h
//  Fan
//
//  Created by Quang Dai on 4/14/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgFan;
@property (strong, nonatomic) IBOutlet UISegmentedControl *btnSpeed;
- (IBAction)btnSpeedChangedValue:(id)sender;
@property double rotation;
@property double speed;
@end


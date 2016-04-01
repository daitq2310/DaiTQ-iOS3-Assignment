//
//  ViewController.h
//  AlertView
//
//  Created by Quang Dai on 3/31/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lblBegin;
- (IBAction)btn1:(id)sender;
- (IBAction)btn2:(id)sender;
- (IBAction)btn3:(id)sender;

@end


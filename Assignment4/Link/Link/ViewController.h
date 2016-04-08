//
//  ViewController.h
//  Link
//
//  Created by Quang Dai on 4/8/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"
#import "ForgetPasswordViewController.h"
#import "HomeViewController.h"

@interface ViewController : UIViewController
@property RegisterViewController *registerVC;
@property ForgetPasswordViewController *forgetPwdVC;
@property HomeViewController *homeVC;

- (IBAction)btnRegister:(id)sender;
- (IBAction)btnForget:(id)sender;
- (IBAction)btnLogin:(id)sender;


@end


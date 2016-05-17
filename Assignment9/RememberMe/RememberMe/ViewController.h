//
//  ViewController.h
//  RememberMe
//
//  Created by Quang Dai on 5/3/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtPwd;
@property (weak, nonatomic) IBOutlet UIButton *btnCheckBox;
- (IBAction)btnCheckBoxClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnRead;
- (IBAction)btnReadClicked:(id)sender;
@property BOOL isCheckboxSelected;

@end


//
//  ViewController.m
//  RememberMe
//
//  Created by Quang Dai on 5/3/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initBtnCheckbox];
}

- (void) initBtnCheckbox {
    if (!_isCheckboxSelected) {
        [_btnCheckBox setBackgroundImage:[UIImage imageNamed:@"UnSelectedCheckBox.png"] forState:UIControlStateNormal];
    } else if (_isCheckboxSelected) {
        [_btnCheckBox setBackgroundImage:[UIImage imageNamed:@"SelectedCheckBox.png"] forState:UIControlStateNormal];
    }
}

- (void) save {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:_txtName.text forKey:@"Name"];
    [defaults setObject:_txtPwd.text forKey:@"Password"];
    [defaults synchronize];
}

- (void) read {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    _txtName.text = [defaults objectForKey:@"Name"];
    _txtPwd.text = [defaults objectForKey:@"Password"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnCheckBoxClicked:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (!_isCheckboxSelected) {
        [_btnCheckBox setBackgroundImage:[UIImage imageNamed:@"SelectedCheckBox.png"] forState:UIControlStateNormal];
        _isCheckboxSelected = YES;
        NSLog(@"Checked");
        [self save];
    } else if (_isCheckboxSelected) {
        [_btnCheckBox setBackgroundImage:[UIImage imageNamed:@"UnSelectedCheckBox.png"] forState:UIControlStateNormal];
        _isCheckboxSelected = NO;
        NSLog(@"Not Checked");
    }
    [defaults synchronize];
}
- (IBAction)btnReadClicked:(id)sender {
    [self read];
}
@end

//
//  ViewController.m
//  Link
//
//  Created by Quang Dai on 4/8/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnForget:(id)sender {
    self.forgetPwdVC = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"ForgetPassword01"];
    [self.navigationController pushViewController:self.forgetPwdVC animated:YES];
}

- (IBAction)btnLogin:(id)sender {
    self.homeVC = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"Home01"];
    [self presentViewController:self.homeVC animated:YES completion:^{}];
    [
}

- (IBAction)btnRegister:(id)sender {
    self.registerVC = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"Register01"];
    [self.navigationController pushViewController:self.registerVC animated:YES];
}

@end

//
//  ViewController.m
//  CustomAlertView
//
//  Created by Quang Dai on 3/31/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//```
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

- (IBAction)btnOpen:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"CustomAlertView" message:@"Enter Name and Password" delegate:nil cancelButtonTitle:@"Button 01" otherButtonTitles:@"Button 02", nil];
    
    alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alert show];
}
@end

//
//  ViewController.m
//  AlertView
//
//  Created by Quang Dai on 3/31/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.lblBegin.text = @"Exercise 1 - AlertView";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn1:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button 01" message:@"You clicked on button 01" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alert show];
    
}

- (IBAction)btn2:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button 02" message:@"You clicked on button 02" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alert show];
}

- (IBAction)btn3:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button 03" message:@"You clicked on button 03" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alert show];
}

@end

//
//  FrontViewController.m
//  SWRevealViewControllerDemo
//
//  Created by Quang Dai on 5/2/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "FrontViewController.h"

@interface FrontViewController ()

@end

@implementation FrontViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.revealViewController.delegate = self;
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  ViewController.m
//  Tabbar
//
//  Created by Quang Dai on 4/8/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITabBarControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.viewController1 = [[UIViewController alloc] init];
    self.viewController1.view.backgroundColor = [UIColor redColor];
    self.viewController1.tabBarItem.title = @"Controller 1";
    
    self.viewController2 = [[UIViewController alloc] init];
    self.viewController2.view.backgroundColor = [UIColor blueColor];
    self.viewController2.tabBarItem.title = @"Controller 2";
    
    self.tabBarController = [[UITabBarController alloc] init];
    [self.tabBarController setViewControllers:@[self.viewController1, self.viewController2] animated:YES];
    
    [self.view addSubview:self.tabBarController.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

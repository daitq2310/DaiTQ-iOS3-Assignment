//
//  ViewController.m
//  Navigation
//
//  Created by Quang Dai on 4/8/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //self.rootViewController = [[UIViewController alloc] init];
    self.viewController1 = [[UIViewController alloc] init];
    self.viewController2 = [[UIViewController alloc] init];
    
    self.viewController1.view.backgroundColor = [UIColor redColor];
    self.viewController2.view.backgroundColor = [UIColor blueColor];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.viewController1];
    [self.view addSubview:self.navigationController.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (IBAction)btnNavigation:(id)sender {
    
}
@end

//
//  ViewController.m
//  Switch
//
//  Created by Quang Dai on 4/5/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UISwitch *switchh;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect switchFrame = CGRectMake(55, 100, 250, 50);
    self.switchh = [[UISwitch alloc] initWithFrame:switchFrame];
    [self.switchh addTarget:self action:@selector(swichAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.switchh];
}

- (void) swichAction: (UISwitch *)switchh{
    if (self.switchh.isOn){
        NSLog(@"ON");
    } else {
        NSLog(@"OFF");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

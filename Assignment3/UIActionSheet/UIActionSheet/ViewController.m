//
//  ViewController.m
//  UIActionSheet
//
//  Created by Quang Dai on 4/5/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface ViewController () <UIActionSheetDelegate>
@property (strong, nonatomic) UIActionSheet *actionSheet;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.actionSheet = [[UIActionSheet alloc] initWithTitle:@"Action Sheet" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles: @"OK", @"Confirm", @"Share", nil];
    self.actionSheet.tag = 1;
    [self.actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)popup clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"Selected %d", self.actionSheet.tag);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

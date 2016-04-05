//
//  ViewController.m
//  Segment
//
//  Created by Quang Dai on 4/5/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UISegmentedControl *segment;
}

@property (strong, nonatomic) UISegmentedControl *segment;
@end

@implementation ViewController
@synthesize segment;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect segmentFrame = CGRectMake(50, 50, 250, 50);
    self.segment = [[UISegmentedControl alloc] initWithItems:@[@"One", @"Two", @"Three", @"Four"]];
    self.segment.frame = segmentFrame;
    [self.segment setSelectedSegmentIndex:0];
    [self.segment addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segment];
}

- (void) segmentAction: (UISegmentedControl *) segment{
    NSLog(@"Selected %d", self.segment.selectedSegmentIndex + 1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

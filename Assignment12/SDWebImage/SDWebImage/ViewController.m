//
//  ViewController.m
//  SDWebImage
//
//  Created by Quang Dai on 5/17/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self readResource];
}

- (void) readResource {
    [_imvDemo sd_setImageWithURL:[NSURL URLWithString:@"http://www.conceptcarz.com/images/Jaguar/Jaguar-F-Pace-First-Edition-2015-Image-03.jpg"] placeholderImage:[UIImage imageNamed:@"noImage.png"]];
    _imvDemo.contentMode = UIViewContentModeScaleAspectFill;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  UIPickerView
//
//  Created by Quang Dai on 4/5/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface ViewController ()<UIPickerViewDelegate, UIPickerViewDataSource>{
    UIPickerView *choice;
    NSArray *age;
    NSArray *language;
    NSArray *country;
}

@property (strong, retain, nonatomic) NSArray *age;
@property (strong, retain, nonatomic) NSArray *language;
@property (strong, retain, nonatomic) NSArray *country;
@property (retain, nonatomic) UIPickerView *choice;

@end

@implementation ViewController
@synthesize choice, age, language, country;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.age = @[@"15", @"16", @"17", @"18", @"19", @"20", @"21", @"22", @"23", @"24", @"25"];
    self.language = @[@"English", @"Spanish", @"French", @"Greek", @"Japaneese", @"Korean", @"Vietnamese"];
    self.country = @[@"United Kingdom", @"Spain", @"France", @"Greece", @"Japan", @"Korea", @"Vietnam"];
    
    //-----------------------------------------------------------------------
    
    CGFloat positionX = 0;
    CGFloat positionY = 150;
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height/3;
    choice = [[UIPickerView alloc] initWithFrame:CGRectMake(positionX, positionY, width, height)];
    self.choice.delegate = self;
    //self.choice.showsSelectionIndicator = NO;
    //self.choice.hidden = YES;

    [self.view addSubview:choice];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return [self.age count];
    } if (component == 1) {
        return [self.language count];
    } else {
        return [self.country count];
    }

}

- (NSString*) pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        return [self.age objectAtIndex:row];
    } if (component == 1) {
        return [self.language objectAtIndex:row];
    } else {
        return [self.country objectAtIndex:row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSLog(@"Selected Component: %d, Row: %d",component+1, row+1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.h
//  CustomSlider
//
//  Created by Quang Dai on 4/12/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *btnSlider;

- (IBAction)btnSliderChangedValue:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *btnSlider2;

- (IBAction)btnSlider2ChangedValue:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblValue;

@property int value1;
@end


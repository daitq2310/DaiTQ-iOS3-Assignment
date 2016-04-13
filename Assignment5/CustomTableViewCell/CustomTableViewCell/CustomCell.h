//
//  CustomCell.h
//  CustomTableViewCell
//
//  Created by Quang Dai on 4/13/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *btnButton;
- (IBAction)btnButtonClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *btnSwitch;
- (IBAction)btnSwitchChangedValue:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblDescription;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

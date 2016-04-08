//
//  CustomCell.h
//  TableViewWithFileXib
//
//  Created by Quang Dai on 4/8/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblText;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
@property (weak, nonatomic) IBOutlet UISwitch *switchSetting;

@end

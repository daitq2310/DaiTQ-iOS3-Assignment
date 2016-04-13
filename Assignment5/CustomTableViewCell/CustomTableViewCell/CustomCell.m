//
//  CustomCell.m
//  CustomTableViewCell
//
//  Created by Quang Dai on 4/13/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    // Initialization code
    self.imgView.image = [UIImage imageNamed:@"edge.png"];
    self.imgView.tag = 1;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (IBAction)btnButtonClicked:(id)sender {
}

- (IBAction)btnSwitchChangedValue:(id)sender {
}
@end

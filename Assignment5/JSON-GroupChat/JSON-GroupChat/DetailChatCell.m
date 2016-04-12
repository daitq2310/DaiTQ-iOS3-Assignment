//
//  DetailChatCell.m
//  JSON-GroupChat
//
//  Created by Quang Dai on 4/12/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "DetailChatCell.h"

@implementation DetailChatCell

- (void)awakeFromNib {
    // Initialization code
    self.lblLeft.tag = 102;
    self.lblRight.tag = 103;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end

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
    _lblFriend.tag = 1021;
    _lblYou.tag = 1031;
    _imgFriend.tag = 104;
    _imgYou.tag = 105;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end

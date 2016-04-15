//
//  IdCell.m
//  JSON-GroupChat
//
//  Created by Quang Dai on 4/12/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "IdCell.h"

@implementation IdCell

- (void)awakeFromNib {
    // Initialization code
    self.lblId.tag = 101;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

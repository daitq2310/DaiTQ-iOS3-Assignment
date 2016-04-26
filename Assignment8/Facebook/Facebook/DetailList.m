//
//  DetailList.m
//  Facebook
//
//  Created by Quang Dai on 4/26/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "DetailList.h"

@implementation DetailList

- (void)awakeFromNib {
    // Initialization code
    _lblName.tag = 1;
    _imgAvt.tag = 2;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

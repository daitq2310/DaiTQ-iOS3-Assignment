//
//  ViewCell.m
//  TableData
//
//  Created by Quang Dai on 5/5/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewCell.h"

@implementation ViewCell


- (void)awakeFromNib {
    // Initialization code
}

- (id)initViewCell
{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell1"];
    if (self) {
        _lblName = [[UILabel alloc] init];
        _lblAge = [[UILabel alloc] init];
        [self addSubview:_lblName];
        [self addSubview:_lblAge];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

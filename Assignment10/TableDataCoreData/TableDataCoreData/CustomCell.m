//
//  CustomCell.m
//  TableDataCoreData
//
//  Created by Quang Dai on 5/7/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    // Initialization code
}

- (id) initCustomCell {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell1"];
    if (self) {
        _lblName = [[UILabel alloc] init];
        _lblCountry = [[UILabel alloc] init];
        [self addSubview:_lblName];
        [self addSubview:_lblCountry];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end

//
//  CustomCell.h
//  TableDataCoreData
//
//  Created by Quang Dai on 5/7/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UILabel *lblCountry;
- (id) initCustomCell;

@end

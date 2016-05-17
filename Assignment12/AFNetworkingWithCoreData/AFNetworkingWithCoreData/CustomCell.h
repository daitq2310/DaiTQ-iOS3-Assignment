//
//  CustomCell.h
//  AFNetworkingWithCoreData
//
//  Created by Quang Dai on 5/17/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (retain, nonatomic) IBOutlet UILabel *lblTitle;
@property (retain, nonatomic) IBOutlet UILabel *lblBody;
@property (retain, nonatomic) IBOutlet UILabel *lblId;
- (id) initCell;

@end

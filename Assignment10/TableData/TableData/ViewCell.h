//
//  ViewCell.h
//  TableData
//
//  Created by Quang Dai on 5/5/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewCell : UITableViewCell
@property (retain, nonatomic) IBOutlet UILabel *lblName;
@property (retain, nonatomic) IBOutlet UILabel *lblAge;
- (id) initViewCell;

@end

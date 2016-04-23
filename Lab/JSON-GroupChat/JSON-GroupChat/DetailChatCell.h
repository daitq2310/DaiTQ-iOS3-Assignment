//
//  DetailChatCell.h
//  JSON-GroupChat
//
//  Created by Quang Dai on 4/12/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailChatCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblLeft;
@property (weak, nonatomic) IBOutlet UILabel *lblFriend;
@property (weak, nonatomic) IBOutlet UIImageView *imgFriend;
@property (weak, nonatomic) IBOutlet UILabel *lblRight;
@property (weak, nonatomic) IBOutlet UILabel *lblYou;
@property (weak, nonatomic) IBOutlet UIImageView *imgYou;
@end

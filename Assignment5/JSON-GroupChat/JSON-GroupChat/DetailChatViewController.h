//
//  DetailChatViewController.h
//  JSON-GroupChat
//
//  Created by Quang Dai on 4/12/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailChatViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property NSDictionary *dictData;
@end

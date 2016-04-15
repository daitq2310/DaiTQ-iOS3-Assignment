//
//  ViewController.h
//  JSON-GroupChat
//
//  Created by Quang Dai on 4/10/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tblGroupChat;
@property NSArray *jsonArray;

@end


//
//  ViewController.h
//  TableData
//
//  Created by Quang Dai on 5/4/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtData;
@property (weak, nonatomic) IBOutlet UIButton *btnAdd;
- (IBAction)btnAddClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tblData;


@end


//
//  ViewController.h
//  TableDataCoreData
//
//  Created by Quang Dai on 5/7/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UIButton *btnAdd;
- (IBAction)btnAddClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnEdit;
- (IBAction)btnEditClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tblDataAccount;
@property (weak, nonatomic) IBOutlet UIButton *btnDone;
- (IBAction)btnDoneClicked:(id)sender;


@end


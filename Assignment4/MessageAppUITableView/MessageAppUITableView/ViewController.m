//
//  ViewController.m
//  MessageAppUITableView
//
//  Created by Quang Dai on 4/8/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
@interface ViewController () <UITableViewDataSource, UITableViewDelegate>{
    NSMutableArray *dataLeft;
    NSMutableArray *dataRight;
}
@property CustomTableViewCell *customCell;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    dataLeft = [@[@"ABC", @"Test text Left"] mutableCopy];
    dataRight = [@[@"ABC", @"Test text Left"] mutableCopy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell;
    if (cell == nil){
        if (indexPath.row % 4 == 0){
            cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
            } else if (indexPath.row % 4 == 1){
            cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
            } else if (indexPath.row % 4 == 2){
                cell = [tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath];
            } else if (indexPath.row % 4 == 3){
                cell = [tableView dequeueReusableCellWithIdentifier:@"Cell4" forIndexPath:indexPath];
            }
   }
//    if (cell == nil){
//    
//        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
//        cell.txtLeft.text = dataLeft[indexPath.row];}
    
    //[cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    //cell.textLabel.text = [NSString stringWithFormat:@"DADASDASD"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}


@end

//
//  ViewController.m
//  TableViewWithFileXib
//
//  Created by Quang Dai on 4/8/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *simpleIdentifier = @"Cell";
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleIdentifier];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:nil options:nil].firstObject;
    }
    cell.lblText.text = [NSString stringWithFormat:@"Test CustomCell %d", indexPath.row + 1];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  TableView
//
//  Created by Quang Dai on 4/1/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 101;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *mainCell = @"Main Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:mainCell];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:mainCell];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Line %d", indexPath.row+1];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"TechKids %d", indexPath.row+1];
    return cell;
}

//- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    NSString *value = cell.textLabel.text;
//    NSString * msg = [[NSString alloc] initWithFormat:@"You selected %@", value];
//    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"SELECTED" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//    
//    [alert show];
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

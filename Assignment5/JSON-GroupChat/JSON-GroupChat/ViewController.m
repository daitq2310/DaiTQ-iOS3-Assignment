//
//  ViewController.m
//  JSON-GroupChat
//
//  Created by Quang Dai on 4/10/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "IdCell.h"
#import "DetailChatViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSError *jsonError;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"json" ofType:@"txt"];
    
    NSString* content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&jsonError];
    
    NSData *objectData = [content dataUsingEncoding:NSUTF8StringEncoding];
    self.jsonArray = [NSJSONSerialization JSONObjectWithData:objectData options:NSJSONReadingMutableContainers error:&jsonError];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.jsonArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    IdCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    UILabel *lblHello = [cell.contentView viewWithTag:101];
    NSDictionary *dictData = [self.jsonArray objectAtIndex:indexPath.row];
    lblHello.text = dictData[@"id"];
    if (indexPath.row % 2 == 0){
        cell.backgroundColor = [UIColor brownColor];
    } else {
        cell.backgroundColor = [UIColor cyanColor];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *jsonDictionary = [self.jsonArray objectAtIndex:indexPath.row];
    DetailChatViewController *detailChatVC = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"DetailChat"];
    [self.navigationController pushViewController:detailChatVC animated:YES];
    NSDictionary *dictData = [self.jsonArray objectAtIndex:indexPath.row];
    detailChatVC.dictData = dictData;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

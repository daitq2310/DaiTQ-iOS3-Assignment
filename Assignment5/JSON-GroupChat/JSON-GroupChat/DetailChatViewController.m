//
//  DetailChatViewController.m
//  JSON-GroupChat
//
//  Created by Quang Dai on 4/12/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "DetailChatViewController.h"
#import "DetailChatCell.h"

@interface DetailChatViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation DetailChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSArray *array = self.dictData[@"transcript"];
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailChatCell *cell;
    NSArray *array = self.dictData[@"transcript"];
    NSDictionary *dictionary = [array objectAtIndex:indexPath.row];
    
    if (dictionary[@"alias"] == nil || [@"" isEqualToString: dictionary[@"alias"]]) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellRight" forIndexPath:indexPath];
        UILabel *lblMsg = [cell.contentView viewWithTag:103];
        lblMsg.text = dictionary[@"message"];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellLeft" forIndexPath:indexPath];
        UILabel *lblMsg = [cell.contentView viewWithTag:102];
        lblMsg.text = dictionary[@"message"];
    }

    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray *array = self.dictData[@"transcript"];
    NSDictionary *dictionary = [array objectAtIndex:indexPath.row];
    UILabel *lblMsgFix = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width - 60, 10)];
    lblMsgFix.text = dictionary[@"message"];
    lblMsgFix.numberOfLines = 0;
    [lblMsgFix sizeToFit];
    return lblMsgFix.frame.size.height + 20;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

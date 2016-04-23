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
    UIImageView *tempImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.jpg"]];
    tempImageView.contentMode = UIViewContentModeScaleAspectFill;
    [tempImageView setFrame:_tableChat.frame];
    _tableChat.backgroundView = tempImageView;
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
        UILabel *lblName = [cell.contentView viewWithTag:1031];
        UIImageView *imgAvt = [cell.contentView viewWithTag:105];
        
        lblMsg.text = dictionary[@"message"];
        lblMsg.clipsToBounds = YES;
        lblMsg.layer.cornerRadius = 15;
        
        lblName.text = @"You";
        lblName.clipsToBounds = YES;
        lblName.layer.cornerRadius = lblName.frame.size.height/2;
        
        imgAvt.image = [UIImage imageNamed:@"avt4.jpg"];
        imgAvt.contentMode = UIViewContentModeScaleAspectFill;
        imgAvt.layer.masksToBounds = YES;
        imgAvt.layer.cornerRadius = imgAvt.frame.size.width/2;
        imgAvt.layer.borderWidth = 2.0f;
        imgAvt.layer.borderColor = [UIColor whiteColor].CGColor;
        
        cell.center = CGPointMake(150, cell.frame.origin.y);
        [UIView animateWithDuration:2.0 delay:0.2 usingSpringWithDamping:0.5 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveLinear animations:^{
            cell.center = CGPointMake(10, cell.frame.origin.y);
        } completion:^(BOOL finished) {
            
        }];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellLeft" forIndexPath:indexPath];
        UILabel *lblMsg = [cell.contentView viewWithTag:102];
        UILabel *lblName = [cell.contentView viewWithTag:1021];
        UIImageView *imgAvt = [cell.contentView viewWithTag:104];
        
        lblMsg.text = dictionary[@"message"];
        lblMsg.clipsToBounds = YES;
        lblMsg.layer.cornerRadius = 15;

        lblName.text = dictionary[@"alias"];
        lblName.clipsToBounds = YES;
        lblName.layer.cornerRadius = lblName.frame.size.height/2;

        imgAvt.image = [UIImage imageNamed:@"avt1.jpg"];
        imgAvt.contentMode = UIViewContentModeScaleAspectFill;
        imgAvt.layer.masksToBounds = YES;
        imgAvt.layer.cornerRadius = imgAvt.frame.size.width/2;
        imgAvt.layer.borderWidth = 2.0f;
        imgAvt.layer.borderColor = [UIColor whiteColor].CGColor;
        
        cell.center = CGPointMake(-150, cell.frame.origin.y);
        [UIView animateWithDuration:2.0 delay:0.2 usingSpringWithDamping:0.5 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveLinear animations:^{
            cell.center = CGPointMake(10, cell.frame.origin.y);
        } completion:^(BOOL finished) {
            
        }];
    }

    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray *array = self.dictData[@"transcript"];
    NSDictionary *dictionary = [array objectAtIndex:indexPath.row];
    UILabel *lblMsgFix = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width - 89, 41)];
    UILabel *lblNameFix = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width - 152, 41)];
    lblMsgFix.text = dictionary[@"message"];
    if (dictionary[@"alias"] == nil || [@"" isEqualToString: dictionary[@"alias"]]) {
        lblNameFix.text = @"You";
    } else {
        lblNameFix.text = dictionary[@"alias"];
    }

    lblMsgFix.numberOfLines = 0;
    lblNameFix.numberOfLines = 0;
    [lblMsgFix sizeToFit];
    [lblNameFix sizeToFit];
    return lblMsgFix.frame.size.height + 20 + lblNameFix.frame.size.height;
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

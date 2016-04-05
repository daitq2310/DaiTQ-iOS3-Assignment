//
//  ViewController.m
//  UITableView
//
//  Created by Quang Dai on 4/5/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) UITableView *tableView;

@end

@implementation ViewController

- (UITableView *) makeNewTableView{
    CGFloat positionX = 0;
    CGFloat positionY = 50;
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;
    CGRect tableFrame = CGRectMake(positionX, positionY, width, height);
    UITableView *tableView = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    tableView.rowHeight = 50;
    tableView.scrollEnabled = YES;
    tableView.delegate = self;
    tableView.dataSource = self;
    return tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView = [self makeNewTableView];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"newFriendCell"];
    [self.view addSubview:self.tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *mainCell = @"Main Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:mainCell];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:mainCell];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"Hello %d", indexPath.row+1];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Line %d", indexPath.row+1];
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Line %d", indexPath.row+1);
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *value = cell.textLabel.text;
    NSString * msg = [[NSString alloc] initWithFormat:@"You selected %@", value];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"SELECTED" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alert show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

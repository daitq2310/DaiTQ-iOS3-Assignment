//
//  ViewController.m
//  AFNetworkingWithCoreData
//
//  Created by Quang Dai on 5/17/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "Post.h"
#import "CustomCell.h"
#import "AFNetworking.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray *arayPosts;
@property NSString *BaseURLString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self readResource];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) readResource {
    _BaseURLString = @"http://jsonplaceholder.typicode.com/";
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"txt"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSArray *jsonArr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    _arayPosts = [[NSMutableArray alloc]init];
    
    for (NSDictionary *dict in jsonArr) {
        Post *post = [[Post alloc] initWithJson:dict];
        [_arayPosts addObject:post];
    }
}

- (void) downloadComments :(Post *)post {
    NSString *urlString = [NSString stringWithFormat:@"%@comments?postId=%@", _BaseURLString, post.mId];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:urlString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

#pragma mark - TableView Delegate and DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_arayPosts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
    if (cell == nil) {
        cell = [[CustomCell alloc] initCell];
    }
    Post *post = [_arayPosts objectAtIndex:indexPath.row];
    cell.lblId.text = [NSString stringWithFormat:@"%@", (NSNumber *) post.mId];
    cell.lblTitle.text = post.title;
    cell.lblBody.text = post.body;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Post *post = [_arayPosts objectAtIndex:indexPath.row];
    [self downloadComments:post];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
    if (cell == nil) {
        cell = [[CustomCell alloc] initCell];
    }
    Post *post = [_arayPosts objectAtIndex:indexPath.row];
    cell.lblId.text = [NSString stringWithFormat:@"%@", (NSNumber *) post.mId];
    cell.lblTitle.text = post.title;
    cell.lblBody.text = post.body;
    
    [cell.lblTitle sizeToFit];
    [cell.lblBody sizeToFit];
    [cell.contentView layoutIfNeeded];
    float cellHeight = cell.lblTitle.frame.size.height + cell.lblBody.frame.size.height + 3*30;
    NSLog(@"%ld, %f", indexPath.row + 1, cellHeight);
    return cellHeight;
}

@end

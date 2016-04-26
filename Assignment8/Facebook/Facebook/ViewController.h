//
//  ViewController.h
//  Facebook
//
//  Created by Quang Dai on 4/26/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate, UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *viewRight;
@property (weak, nonatomic) IBOutlet UIView *viewLeft;

@property UIPanGestureRecognizer *pan;
@property UIPanGestureRecognizer *pan2;

@property (weak, nonatomic) IBOutlet UITableView *listFriend;
@property NSArray *imgData;
@property NSArray *nameData;
@end


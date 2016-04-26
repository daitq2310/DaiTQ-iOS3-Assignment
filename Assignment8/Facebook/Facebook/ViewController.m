//
//  ViewController.m
//  Facebook
//
//  Created by Quang Dai on 4/26/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"
#import "DetailList.h"

@interface ViewController () <UIGestureRecognizerDelegate, UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _viewLeft.userInteractionEnabled = YES;
    _viewRight.userInteractionEnabled = YES;
    [self initPan];
    [_viewLeft addGestureRecognizer:_pan];
    
    _imgData = @[@"avt1.jpg", @"avt2.jpg", @"avt3.jpg", @"avt4.jpg", @"avt5.jpg", @"avt6.jpg", @"avt7.jpg", @"avt8.jpg"];
    _nameData = @[@"Katherine Mcnamara", @"Bill Gates", @"Guest", @"Brett Dalton", @"Daniel Radcliffe", @"Wayne Rooney", @"Cristiano Ronaldo", @"Emma Watson"];
}

- (void) initPan {
    _pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panDid:)];
    _pan.delegate = self;
}

- (void) panDid : (UIPanGestureRecognizer *) panRecognizer {
    CGPoint translation = [panRecognizer translationInView:self.view];
    panRecognizer.view.center = CGPointMake(panRecognizer.view.center.x + translation.x, panRecognizer.view.center.y + translation.y);
    [panRecognizer setTranslation:CGPointMake(0,0) inView:self.view];
    
    _viewLeft.frame = CGRectMake(_viewLeft.frame.origin.x, 0, _viewLeft.frame.size.width, _viewLeft.frame.size.height);
    _viewRight.frame = CGRectMake(_viewLeft.frame.origin.x + _viewLeft.frame.size.width, 0, _viewRight.frame.size.width, _viewRight.frame.size.height);
    if (panRecognizer.state == UIGestureRecognizerStateEnded) {
        [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
            if (_viewLeft.frame.origin.x + _viewLeft.frame.size.width < self.view.center.x) {
                _viewLeft.frame = CGRectMake(-_viewLeft.frame.size.width + 100, 0, _viewLeft.frame.size.width, _viewLeft.frame.size.height);
            } else {
                _viewLeft.frame = CGRectMake(0, 0, _viewLeft.frame.size.width, _viewLeft.frame.size.height);
            }
            _viewRight.frame = CGRectMake(_viewLeft.frame.origin.x + _viewLeft.frame.size.width, 0, _viewRight.frame.size.width, _viewRight.frame.size.height);
        } completion:^(BOOL finished) {
            
        }];
        
    }
}

#pragma mark - Table View (List Friend)
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_imgData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailList *cell;
    if (cell == nil){
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
        UILabel *lblName = [cell.contentView viewWithTag:1];
        UIImageView *imgAvt = [cell.contentView viewWithTag:2];
        
        NSString *imgName = [_imgData objectAtIndex:indexPath.row];
        imgAvt.image = [UIImage imageNamed:imgName];
        imgAvt.contentMode = UIViewContentModeScaleAspectFill;
        imgAvt.layer.masksToBounds = YES;
        imgAvt.layer.cornerRadius = imgAvt.frame.size.width/2;
        imgAvt.layer.borderWidth = 2.0f;
        imgAvt.layer.borderColor = [UIColor whiteColor].CGColor;
        
        lblName.text = [_nameData objectAtIndex:indexPath.row];
    }
    cell.backgroundColor = [UIColor clearColor];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

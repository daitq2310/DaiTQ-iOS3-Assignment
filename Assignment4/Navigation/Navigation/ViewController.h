//
//  ViewController.h
//  Navigation
//
//  Created by Quang Dai on 4/8/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate>
@property UIViewController *rootViewController;
@property UIViewController *viewController1;
@property UIViewController *viewController2;
@property UINavigationController *navigationController;
- (IBAction)btnNavigation:(id)sender;

@end


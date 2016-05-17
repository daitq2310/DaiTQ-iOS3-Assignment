//
//  Post.h
//  AFNetworkingWithCoreData
//
//  Created by Quang Dai on 5/17/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject
@property NSNumber *userId;
@property NSNumber *mId;
@property NSString *title;
@property NSString *body;
- (instancetype)initWithJson:(NSDictionary*) dict;
@end

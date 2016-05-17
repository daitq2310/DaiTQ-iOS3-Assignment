//
//  Post.m
//  AFNetworkingWithCoreData
//
//  Created by Quang Dai on 5/17/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "Post.h"

@implementation Post

- (instancetype)initWithJson: (NSDictionary*) dict
{
    
    self = [super init];
    if(self != nil) {
        _userId = dict[@"userId"];
        _mId = dict[@"id"];
        _title = dict[@"title"];
        _body = dict[@"body"];
    }
    return self;
}

@end

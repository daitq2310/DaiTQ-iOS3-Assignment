//
//  Comment+CoreDataProperties.h
//  AFNetworkingWithCoreData
//
//  Created by Quang Dai on 5/17/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Comment.h"

NS_ASSUME_NONNULL_BEGIN

@interface Comment (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *postId;
@property (nullable, nonatomic, retain) NSNumber *mId;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *email;
@property (nullable, nonatomic, retain) NSString *body;

@end

NS_ASSUME_NONNULL_END

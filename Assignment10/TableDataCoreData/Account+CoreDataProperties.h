//
//  Account+CoreDataProperties.h
//  TableDataCoreData
//
//  Created by Quang Dai on 5/7/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Account.h"

NS_ASSUME_NONNULL_BEGIN

@interface Account (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *country;

@end

NS_ASSUME_NONNULL_END

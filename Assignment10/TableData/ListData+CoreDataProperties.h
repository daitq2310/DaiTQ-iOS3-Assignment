//
//  ListData+CoreDataProperties.h
//  TableData
//
//  Created by Quang Dai on 5/4/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ListData.h"

NS_ASSUME_NONNULL_BEGIN

@interface ListData (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *age;

@end

NS_ASSUME_NONNULL_END

//
//  Manager+CoreDataProperties.h
//  Stock Genius
//
//  Created by Brian Clouser on 9/2/16.
//  Copyright © 2016 Clouser. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Manager.h"

NS_ASSUME_NONNULL_BEGIN

@interface Manager (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *managerName;
@property (nullable, nonatomic, retain) NSString *fundName;
@property (nonatomic) BOOL isSGAggregate;
@property (nullable, nonatomic, retain) NSSet<StockHoldingGroup *> *stockHoldingGroups;

@end

@interface Manager (CoreDataGeneratedAccessors)

- (void)addStockHoldingGroupsObject:(StockHoldingGroup *)value;
- (void)removeStockHoldingGroupsObject:(StockHoldingGroup *)value;
- (void)addStockHoldingGroups:(NSSet<StockHoldingGroup *> *)values;
- (void)removeStockHoldingGroups:(NSSet<StockHoldingGroup *> *)values;

@end

NS_ASSUME_NONNULL_END

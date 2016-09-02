//
//  StockHoldingGroup+CoreDataProperties.h
//  Stock Genius
//
//  Created by Brian Clouser on 9/2/16.
//  Copyright © 2016 Clouser. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "StockHoldingGroup.h"

NS_ASSUME_NONNULL_BEGIN

@interface StockHoldingGroup (CoreDataProperties)

@property (nonatomic) BOOL isCurrent;
@property (nonatomic) NSTimeInterval startDate;
@property (nonatomic) BOOL endDate;
@property (nonatomic) float averagePercentageReturn;
@property (nonatomic) float indexPercentageReturn;
@property (nonatomic) float outperformancePercentage;
@property (nullable, nonatomic, retain) NSString *periodName;
@property (nullable, nonatomic, retain) NSSet<StockHolding *> *stockHoldings;
@property (nullable, nonatomic, retain) NSManagedObject *manager;

@end

@interface StockHoldingGroup (CoreDataGeneratedAccessors)

- (void)addStockHoldingsObject:(StockHolding *)value;
- (void)removeStockHoldingsObject:(StockHolding *)value;
- (void)addStockHoldings:(NSSet<StockHolding *> *)values;
- (void)removeStockHoldings:(NSSet<StockHolding *> *)values;

@end

NS_ASSUME_NONNULL_END

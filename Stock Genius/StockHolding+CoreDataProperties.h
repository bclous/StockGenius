//
//  StockHolding+CoreDataProperties.h
//  Stock Genius
//
//  Created by Brian Clouser on 9/2/16.
//  Copyright © 2016 Clouser. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "StockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface StockHolding (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *periodName;
@property (nonatomic) NSTimeInterval startDate;
@property (nonatomic) NSTimeInterval endDate;
@property (nonatomic) float startPrice;
@property (nonatomic) float endPrice;
@property (nonatomic) float periodPercentageReturn;
@property (nonatomic) BOOL isCurrent;
@property (nonatomic) float periodPriceReturn;
@property (nonatomic) int64_t numberOfShares;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *stocks;
@property (nullable, nonatomic, retain) NSManagedObject *stockHoldingGroup;

@end

@interface StockHolding (CoreDataGeneratedAccessors)

- (void)addStocksObject:(NSManagedObject *)value;
- (void)removeStocksObject:(NSManagedObject *)value;
- (void)addStocks:(NSSet<NSManagedObject *> *)values;
- (void)removeStocks:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END

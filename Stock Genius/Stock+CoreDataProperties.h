//
//  Stock+CoreDataProperties.h
//  Stock Genius
//
//  Created by Brian Clouser on 9/2/16.
//  Copyright © 2016 Clouser. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Stock.h"

NS_ASSUME_NONNULL_BEGIN

@interface Stock (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *ticker;
@property (nullable, nonatomic, retain) NSString *companyName;
@property (nonatomic) float marketCap;
@property (nonatomic) float forwardPE;
@property (nonatomic) float earningsPerShare;
@property (nonatomic) float trailingPE;
@property (nonatomic) float currentPrice;
@property (nonatomic) float oneYearRollingReturn;
@property (nonatomic) float threeYearRollingReturn;
@property (nonatomic) float adjustedPrice1Year;
@property (nonatomic) float adjustedPrice3Year;
@property (nonatomic) float oneDayPercentageChange;
@property (nonatomic) float oneDayPriceChange;
@property (nullable, nonatomic, retain) NSSet<StockHolding *> *stockHoldings;

@end

@interface Stock (CoreDataGeneratedAccessors)

- (void)addStockHoldingsObject:(StockHolding *)value;
- (void)removeStockHoldingsObject:(StockHolding *)value;
- (void)addStockHoldings:(NSSet<StockHolding *> *)values;
- (void)removeStockHoldings:(NSSet<StockHolding *> *)values;

@end

NS_ASSUME_NONNULL_END

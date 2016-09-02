//
//  StockHolding+CoreDataProperties.m
//  Stock Genius
//
//  Created by Brian Clouser on 9/2/16.
//  Copyright © 2016 Clouser. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "StockHolding+CoreDataProperties.h"

@implementation StockHolding (CoreDataProperties)

@dynamic periodName;
@dynamic startDate;
@dynamic endDate;
@dynamic startPrice;
@dynamic endPrice;
@dynamic periodPercentageReturn;
@dynamic isCurrent;
@dynamic periodPriceReturn;
@dynamic numberOfShares;
@dynamic stocks;
@dynamic stockHoldingGroup;

@end

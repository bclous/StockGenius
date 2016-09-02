//
//  StockHoldingGroup+CoreDataProperties.m
//  Stock Genius
//
//  Created by Brian Clouser on 9/2/16.
//  Copyright © 2016 Clouser. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "StockHoldingGroup+CoreDataProperties.h"

@implementation StockHoldingGroup (CoreDataProperties)

@dynamic isCurrent;
@dynamic startDate;
@dynamic endDate;
@dynamic averagePercentageReturn;
@dynamic indexPercentageReturn;
@dynamic outperformancePercentage;
@dynamic periodName;
@dynamic stockHoldings;
@dynamic manager;

@end

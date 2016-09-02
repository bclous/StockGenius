//
//  Stock+CoreDataProperties.m
//  Stock Genius
//
//  Created by Brian Clouser on 9/2/16.
//  Copyright © 2016 Clouser. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Stock+CoreDataProperties.h"

@implementation Stock (CoreDataProperties)

@dynamic ticker;
@dynamic companyName;
@dynamic marketCap;
@dynamic forwardPE;
@dynamic earningsPerShare;
@dynamic trailingPE;
@dynamic currentPrice;
@dynamic oneYearRollingReturn;
@dynamic threeYearRollingReturn;
@dynamic adjustedPrice1Year;
@dynamic adjustedPrice3Year;
@dynamic oneDayPercentageChange;
@dynamic oneDayPriceChange;
@dynamic stockHoldings;

@end

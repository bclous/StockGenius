//
//  Datastore.h
//  Stock Genius
//
//  Created by Brian Clouser on 9/2/16.
//  Copyright © 2016 Clouser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "Manager.h"

@interface Datastore : NSObject

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) NSDate *lastUpdateDate;
@property (strong, nonatomic) NSArray *managers;
@property (strong, nonatomic) StockHoldingGroup *currentStockHoldingGroup;
@property (strong, nonatomic) NSCalendar *masterCalendar;


+(instancetype)sharedDatastore;
-(instancetype)init;
-(void)saveContext;
-(void)fetchData;




@end

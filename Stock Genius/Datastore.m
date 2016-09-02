//
//  Datastore.m
//  Stock Genius
//
//  Created by Brian Clouser on 9/2/16.
//  Copyright © 2016 Clouser. All rights reserved.
//

#import "Datastore.h"

@interface Datastore ()

@property (strong, nonatomic) NSDateFormatter *dateFormatter;

@end

@implementation Datastore

@synthesize managedObjectContext = _managedObjectContext;

+ (instancetype)sharedDatastore;
{
    static Datastore *_sharedDatastore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedDatastore = [[Datastore alloc] init];
    });
    
    return _sharedDatastore;
}

-(instancetype)init
{
    self = [super init];
    
    if (self)
    {
        _masterCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        _dateFormatter = [[NSDateFormatter alloc] init];
    }
    
    return self;
}

-(void)saveContext
{
    NSError *error = nil;
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil)
    {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error])
        {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            
            abort();
        }
    }
}

- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectContext *)managedObjectContext
{
    if (_managedObjectContext != nil)
    {
        return _managedObjectContext;
    }
    
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"Model.sqlite"];
    
    NSError *error = nil;
    
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Model" withExtension:@"momd"];
    NSManagedObjectModel *managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    NSPersistentStoreCoordinator *coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:managedObjectModel];
    
    [coordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error];
    if (coordinator != nil) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    return _managedObjectContext;
}

-(void)fetchData
{
    /// need to go hit firebase, then make new objects and then fetch them
}

-(BOOL)updateDateNeedsUpdate
{
    return [self.lastUpdateDate compare:[self mostRecentUpdateDate]] == NSOrderedSame ? NO : YES;
}

-(NSDate *)mostRecentUpdateDate
{
    NSArray *updateDates = @[@[@5,@16,@2016],@[@8,@15,@2016],@[@11,@14,@2016],@[@2,@14,@2017],@[@5,@15,@2017],@[@8,@14,@2017],@[@11,@14,@2017],@[@2,@14,@2018]];
    
    NSDate *today = [NSDate date];
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.year = 0;
    dateComponents.month = 0;
    dateComponents.day = 0;
    dateComponents.hour = 0;
    dateComponents.minute = 0;
    dateComponents.second = 0;
    
    NSDate *lastUpdateDate = [self.masterCalendar dateFromComponents:dateComponents];
    
    for (NSUInteger index; index < updateDates.count; index++)
    {
        dateComponents.year = [updateDates[index][2] integerValue];
        dateComponents.month = [updateDates[index][0] integerValue];
        dateComponents.day = [updateDates[index][1] integerValue];
        
        NSDate *updateDate = [self.masterCalendar dateFromComponents:dateComponents];
        
        NSComparisonResult comparison = [today compare:updateDate];
        
        if (comparison ==  NSOrderedDescending)
        {
            return lastUpdateDate;
            break;
        }
        else
        {
            lastUpdateDate = [self.masterCalendar dateFromComponents:dateComponents];
        }
    }
    
    return lastUpdateDate;
}










@end

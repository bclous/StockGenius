//
//  ViewController.m
//  Stock Genius
//
//  Created by Brian Clouser on 9/2/16.
//  Copyright © 2016 Clouser. All rights reserved.
//

#import "ViewController.h"

@import Firebase;

@interface ViewController ()

@property (strong, nonatomic) NSMutableData *receivedData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.receivedData = [NSMutableData data];
    NSURL *url = [NSURL URLWithString:@"https://finance.yahoo.com/d/quotes.csv?s=GE+PTR+MSFT&f=snd1l1yr"];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString *csv = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"finished");
    }];
    
    [task resume];
    
    FIRDatabase *database = [FIRDatabase database];
    FIRDatabaseReference *reference = [database reference];
    
    NSDictionary *lookup = [reference child:@"Managers"];
    
    NSLog(@"%@", lookup);
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

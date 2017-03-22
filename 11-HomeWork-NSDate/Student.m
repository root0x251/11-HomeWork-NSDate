//
//  Student.m
//  11-HomeWork-Date
//
//  Created by Slava on 22.03.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self randomName];
        [self randomLastName];
        [self randomDateOfBirth];
    }
    return self;
}

- (void) randomName {
    NSArray *arrayName = @[@"Alex", @"Diana", @"Roma", @"Qwerty"];
    self.name = arrayName [arc4random_uniform(4) + 0]; // from 0 to 4 - 1
}

- (void) randomLastName {
    NSArray *arrayLastname = @[@"Vernik", @"Sukrush", @"Pricol"];
    self.lastName = arrayLastname [arc4random_uniform(3) + 0];  // from 0 to 3 - 1
}

- (void) randomDateOfBirth {
    NSDate *date = [NSDate new];
    //    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay
                                                                   fromDate:date];
    [components setYear:arc4random_uniform(68) + 1950];  // from 1950 to 68 - 1
    [components setMonth:arc4random_uniform(13) + 1];
    [components setDay:arc4random_uniform(32)+ 1];
    
    self.dateOfBirth = [[NSCalendar currentCalendar] dateFromComponents:components];
}

@end

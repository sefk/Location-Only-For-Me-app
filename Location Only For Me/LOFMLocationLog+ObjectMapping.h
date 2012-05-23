//
//  NSObject+LocationLog_ObjectMapping.h
//  Location Only For Me
//
//  Created by Sef Kloninger on 5/23/12.
//  Copyright (c) 2012 Peek 222 Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "LOFMLocationLog.h"


@interface LOFMLocationLogManagedObject (ObjectMapping)

// Useful Class Method

+ (LOFMLocationLogManagedObject *) locationLogWithLocation:(CLLocation *)fromLoc;

// Insert

- (void) insertLocation:(CLLocation *)fromLoc inManagedObjectContext:(NSManagedObjectContext *)context;

// Queries

- (NSOrderedSet *) getFromDate:(NSDate *)fromDate toDate:(NSDate *)toDate;
- (NSOrderedSet *) getFromTopLeft:(CLLocation *)locA toBottomRight:(CLLocation *)locB returnAtMost:(NSNumber *)limit;



@end

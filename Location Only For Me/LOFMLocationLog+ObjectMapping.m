//
//  NSObject+LocationLog_ObjectMapping.m
//  Location Only For Me
//
//  Created by Sef Kloninger on 5/23/12.
//  Copyright (c) 2012 Peek 222 Software. All rights reserved.
//

#import "LOFMLocationLog+ObjectMapping.h"

@implementation LOFMLocationLogManagedObject (ObjectMapping)

//
// pragma mark: Class Methods
//

+ (LOFMLocationLogManagedObject *) locationLogWithLocation:(CLLocation *)fromLoc;
{
    LOFMLocationLogManagedObject * logentry = [[LOFMLocationLogManagedObject alloc] init];
    
    logentry.timestamp = fromLoc.timestamp;
    logentry.latitude = [NSNumber numberWithDouble:fromLoc.coordinate.latitude];
    logentry.longitude = [NSNumber numberWithDouble:fromLoc.coordinate.longitude];
    logentry.altitude = [NSNumber numberWithDouble:fromLoc.altitude];
    logentry.horizontalAccuracy = [NSNumber numberWithDouble:fromLoc.horizontalAccuracy];
    logentry.verticalAccuracy = [NSNumber numberWithDouble:fromLoc.verticalAccuracy];

    return logentry;
}


//
// pragma mark: Insert 
//

- (void) insertLocation:(CLLocation *)fromLoc inManagedObjectContext:(NSManagedObjectContext *)context;
{
    LOFMLocationLogManagedObject * logentry = [LOFMLocationLogManagedObject locationLogWithLocation:fromLoc];
    [context insertObject:logentry];
}


//
// pragma mark: Queries
//

- (NSOrderedSet *) getFromDate:(NSDate *)fromDate toDate:(NSDate *)toDate
{
    // TODO
}

- (NSOrderedSet *) getFromTopLeft:(CLLocation *)locA toBottomRight:(CLLocation *)locB returnAtMost:(NSNumber *)limit
{
    // TODO
}


@end

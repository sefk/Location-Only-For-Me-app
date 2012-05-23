//
//  LocationLog.h
//  Location Only For Me
//
//  Created by Sef Kloninger on 5/23/12.
//  Copyright (c) 2012 Peek 222 Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface LOFMLocationLogManagedObject : NSManagedObject

@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSNumber * altitude;
@property (nonatomic, retain) NSNumber * horizontalAccuracy;
@property (nonatomic, retain) NSNumber * verticalAccuracy;

@end

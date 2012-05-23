//
//  LOFMMapViewController.m
//  Location Only For Me
//
//  Created by Sef Kloninger on 5/22/12.
//  Copyright (c) 2012 Peek 222 Software. All rights reserved.
//

#import "LOFMMapViewController.h"
#import <MapKit/MapKit.h>

@interface LOFMMapViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *mapview;

@end

@implementation LOFMMapViewController
@synthesize mapview;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setMapview:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"Got location update: from %@ to %@", oldLocation, newLocation);
}

@end

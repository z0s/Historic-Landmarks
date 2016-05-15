//
//  MapViewController.h
//  HomeWork5
//
//  Created by IT on 1/10/16.
//  Copyright © 2016 cod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "ViewController.h"

@interface MapViewController : ViewController <MKMapViewDelegate>

@property (nonatomic, retain) IBOutlet MKMapView *mapView;


@end

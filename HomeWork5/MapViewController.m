//
//  MapViewController.m
//  HomeWork5
//
//  Created by IT on 1/10/16.
//  Copyright © 2016 cod. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mapView.delegate = self;
    
    
    [self.mapView setRegion:[self.mapView regionThatFits:MKCoordinateRegionMakeWithDistance(self.building.coord, 500, 500)]];
    
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setCoordinate:self.building.coord];
    [annotation setTitle:self.building.name];
    [self.mapView addAnnotation:annotation];
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Standard",@"Hybrid",@"Satellite",nil]];
   
    
    [segmentedControl setFrame:CGRectMake(50, 20, 250, 30)];
    segmentedControl.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:(0.5)];
    [segmentedControl addTarget:self action:@selector(mapTypeChanged:) forControlEvents: UIControlEventValueChanged];
    segmentedControl.selectedSegmentIndex = 0;
    [self.mapView addSubview:segmentedControl];

    
    

}

//- (void)viewDidDisappear:(BOOL)animated
//{
//    [super viewDidDisappear:animated];
//    
//    //[self applyMapViewMemoryHotFix];
//}

//- (void)applyMapViewMemoryHotFix{
//    
//    switch (self.mapView.mapType) {
//        case MKMapTypeHybrid:
//        {
//            self.mapView.mapType = MKMapTypeStandard;
//        }
//            
//            break;
//        case MKMapTypeStandard:
//        {
//            self.mapView.mapType = MKMapTypeHybrid;
//        }
//            
//            break;
//        default:
//            break;
//    }
//    [self.mapView removeFromSuperview];
//    self.mapView = nil;
//}

- (void)dealloc
{
    switch (self.mapView.mapType) {
        case MKMapTypeHybrid:
        {
            self.mapView.mapType = MKMapTypeStandard;
        }
            
            break;
        case MKMapTypeStandard:
        {
            self.mapView.mapType = MKMapTypeHybrid;
        }
            
            break;
        default:
            break;
    }

    self.mapView.delegate = nil;
    [self.mapView removeFromSuperview];
    self.mapView = nil;
}

-(IBAction)mapTypeChanged:(UISegmentedControl *)segmentedControl{
    switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            self.mapView.mapType = MKMapTypeStandard;
            break;
        case 1:
            self.mapView.mapType = MKMapTypeSatelliteFlyover;
            break;
        case 2:
            self.mapView.mapType = MKMapTypeHybridFlyover;
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

//
//  MapViewController.m
//  HomeWork5
//
//  Created by IT on 1/10/16.
//  Copyright © 2016 cod. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"map view controller did load");
    
    mapView.delegate = self;
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//override func loadView() {
//    mapView = MKMapView()
//    view = mapView
//    
//    let segmentedControl = UISegmentedControl(items: ["Standard","Hybrid","Satellite"])
//    segmentedControl.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
//    segmentedControl.selectedSegmentIndex = 0
//    
//    segmentedControl.addTarget(self, action: "mapTypeChanged:", forControlEvents: .ValueChanged)
//    
//    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
//    view.addSubview(segmentedControl)
//    
//    
//    let topConstraint = segmentedControl.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 8)
//    let margins = view.layoutMarginsGuide
//    
//    
//    let leadingConstraint = segmentedControl.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor)
//    let trailingConstraint = segmentedControl.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor)
//    
//    topConstraint.active = true
//    leadingConstraint.active = true
//    trailingConstraint.active = true
//}
//func mapTypeChanged (segControl: UISegmentedControl) {
//    switch segControl.selectedSegmentIndex {
//    case 0:
//        mapView.mapType = .Standard
//    case 1:
//        mapView.mapType = .HybridFlyover
//    case 2:
//        mapView.mapType = .SatelliteFlyover
//    default:
//        break
//    }
//}
//
//  Building.h
//  HomeWork5
//
//  Created by IT on 1/9/16.
//  Copyright © 2016 cod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Building : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *_description;
@property (assign, nonatomic) CLLocationCoordinate2D coord;

@end

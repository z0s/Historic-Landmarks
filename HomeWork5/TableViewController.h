//
//  TableViewController.h
//  HomeWork5
//
//  Created by IT on 1/9/16.
//  Copyright © 2016 cod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Building.h"

@interface TableViewController : UITableViewController

@property (strong, nonatomic) NSArray *buildings;
@property (strong, nonatomic) Building *selectedBuilding;

@end

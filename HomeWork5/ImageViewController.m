//
//  ImageViewController.m
//  HomeWork5
//
//  Created by IT on 1/10/16.
//  Copyright © 2016 cod. All rights reserved.
//

#import "ImageViewController.h"


@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.buildingImageView.image = [UIImage imageNamed:self.building.imageName];
    //[self.buildingImageView sizeToFit];
    //self.buildingImageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    
//- (void)ssetBuilding:(Building *)building
//    {
//        [super setBuilding:building];
//        
//        CGPoint center = CGPointMake(0, self.view.center.y);
//        self.
//        self.descriptionLabel.text = building._description;
//        [self.descriptionLabel sizeToFit];
//        
//        self.title = building.name;
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

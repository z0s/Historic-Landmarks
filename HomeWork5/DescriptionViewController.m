//
//  DescriptionViewController.m
//  HomeWork5
//
//  Created by IT on 1/10/16.
//  Copyright © 2016 cod. All rights reserved.
//

#import "DescriptionViewController.h"

@interface DescriptionViewController ()
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@end

@implementation DescriptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.title = self.building.name;
//    CGPoint center = CGPointMake(0, self.view.center.y);
//    self.descriptionLabel.center = center;
}
- (void)setBuilding:(Building *)building
{
    [super setBuilding:building];
    
    CGPoint center = CGPointMake(0, self.view.center.y);
    self.descriptionLabel.center = center;
    self.descriptionLabel.text = building._description;
    [self.descriptionLabel sizeToFit];
    
    self.title = building.name;
}

@end

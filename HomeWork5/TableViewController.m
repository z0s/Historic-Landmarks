//
//  TableViewController.m
//  HomeWork5
//
//  Created by IT on 1/9/16.
//  Copyright © 2016 cod. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@implementation TableViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Buildings" ofType:@"plist"];
    
    //load file content and read data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSArray *buildingNames = [dict objectForKey:@"BuildingName"];
    NSArray *imageNames = [dict objectForKey:@"BuildingImage"];
    NSArray *buildingDescriptions = [dict objectForKey:@"BuildingDescription"];
    NSMutableArray *buildingArray = [NSMutableArray array];
    
    [buildingNames enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        Building *newBuilding = [[Building alloc]init];
        newBuilding.name = obj;
        newBuilding.imageName = imageNames[idx];
        newBuilding._description = buildingDescriptions [idx];
        [buildingArray addObject:newBuilding];
    }];
    
    self.buildings = buildingArray;
    
    self.title = @"Favorite Buildings In The CHI";
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    //Dispose of any resources that can be recreated.
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    self.selectedBuilding = [self.buildings objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"showTabs" sender:self];
}
#pragma mark - Table view data source
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.buildings.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Building *building = [self.buildings objectAtIndex:indexPath.row];
    cell.textLabel.text = building.name;
    cell.imageView.image = [UIImage imageNamed:building.imageName];
    cell.imageView.contentMode = UIViewContentModeScaleAspectFill;
    return cell;
}
#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    UITabBarController *tabBarController = [segue destinationViewController];
    for (ViewController *vC in tabBarController.viewControllers) {
        vC.building = self.selectedBuilding;
    }

}
@end






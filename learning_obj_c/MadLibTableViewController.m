//
//  MadLibTableViewController.m
//  learning_obj_c
//
//  Created by Christenson, Nick on 12/1/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import "MadLibTableViewController.h"

@interface MadLibTableViewController () <UITableViewDataSource, UITableViewDelegate>
// Create Viewcontroller like normal
// Add table view on top of view controller
// Add constraints
// Drag the table view dataSource and Delegate to the view controller circle at the top
// Must add <UITableViewDataSource, UITableViewDelegate>
//create the required methods numberforowsinsection and cellForRowAtIndexPath
@end

@implementation MadLibTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.madLibTableView reloadData];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.adLibValues.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    NSArray *keys = [self.adLibValues allKeys];
    id aKey = [keys objectAtIndex:indexPath.row];
    cell.textLabel.text = (NSString *)[self.adLibValues objectForKey:aKey];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //when touching cell go to a new view controller and have a label with the selected
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

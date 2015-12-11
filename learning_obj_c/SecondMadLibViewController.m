//
//  SecondMadLibViewController.m
//  learning_obj_c
//
//  Created by Christenson, Nick on 12/3/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import "SecondMadLibViewController.h"
#import "AdLibCollectionViewController.h"

@interface SecondMadLibViewController () <UITableViewDataSource, UITableViewDelegate>

@end


@implementation SecondMadLibViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStyleDone target: self action: @selector(nextWasTapped)];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) nextWasTapped
{
    AdLibCollectionViewController *adLibViewCollection = [self.storyboard instantiateViewControllerWithIdentifier:@"AdLibCollectionView"];
    adLibViewCollection.adLibValues = [[NSMutableDictionary alloc]init];
    adLibViewCollection.adLibValues = self.adLibValues;
    [self.navigationController pushViewController:adLibViewCollection animated:YES];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.adLibValues.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SecondCell"];
    NSArray *keys = [self.adLibValues allKeys];
    id aKey = [keys objectAtIndex:indexPath.row];
   
    return cell;
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

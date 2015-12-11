//
//  AdLibCollectionViewController.m
//  learning_obj_c
//
//  Created by Christenson, Nick on 12/8/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import "AdLibCollectionViewController.h"
#import "AdLibCustomCollectionViewCell.h"

@interface AdLibCollectionViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation AdLibCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionLabel.text = [self.adLibValues objectForKey: @"noun"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
        return self.adLibValues.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    AdLibCustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"CustomCell" forIndexPath:indexPath];
    if (indexPath.row == 0 )
    {
        UIImage *image = [UIImage imageNamed:@"taco"];
        cell.customImageCell.image = image;
    }
    
    NSArray *keys = [self.adLibValues allKeys];
    id aKey = [keys objectAtIndex:indexPath.row];
    cell.customCellLabel.text = (NSString *)[self.adLibValues objectForKey:aKey];
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

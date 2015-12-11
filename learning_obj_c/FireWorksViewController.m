//
//  FireWorksViewController.m
//  learning_obj_c
//
//  Created by Christenson, Nick on 12/6/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import "FireWorksViewController.h"
#import "TWFViewController.h"
#import "TWFAppDelegate.h"

@interface FireWorksViewController ()

@end

@implementation FireWorksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TWFViewController *x = segue.destinationViewController;
}

@end

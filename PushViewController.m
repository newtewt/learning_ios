//
//  PushViewController.m
//  learning_obj_c
//
//  Created by Christenson, Nick on 11/25/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import "PushViewController.h"
#import "AdverbViewController.h"

@interface PushViewController ()
-(void) stepNumber:(int) step;

@end

@implementation PushViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)handleAdjectiveButtonTAp:(id)sender {
    AdverbViewController *adverbStep = [self.storyboard instantiateViewControllerWithIdentifier:@"AdverbViewController"];
    adverbStep.adLibValues = [[NSMutableDictionary alloc]init];
    [adverbStep.adLibValues setValue:self.adLibTextField.text forKey:@"adjective"];
    [self.navigationController pushViewController:adverbStep animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    AdverbViewController *adverbStep = segue.destinationViewController;
    adverbStep.adLibValues = [[NSMutableDictionary alloc]init];
    [adverbStep.adLibValues setValue:self.adLibTextField.text forKey:@"adjective"];
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

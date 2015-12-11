//
//  AdverbViewController.m
//  learning_obj_c
//
//  Created by Christenson, Nick on 11/30/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import "AdverbViewController.h"
#import "NounViewController.h"

@interface AdverbViewController ()

@end

@implementation AdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)adverbButtonTap:(id)sender {
    NounViewController *nounStep = [self.storyboard instantiateViewControllerWithIdentifier:@"NounViewController"];
    nounStep.adLibValues = [[NSMutableDictionary alloc]init];
    nounStep.adLibValues = self.adLibValues;
    [nounStep.adLibValues setValue:self.adverbTextField.text forKey:@"adverb"];
    [self.navigationController pushViewController:nounStep animated:YES];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NounViewController *nounStep = segue.destinationViewController;
    nounStep.adLibValues = [[NSMutableDictionary alloc]init];
    nounStep.adLibValues = self.adLibValues;
    [nounStep.adLibValues setValue:self.adverbTextField.text forKey:@"adverb"];
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

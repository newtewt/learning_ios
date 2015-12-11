//
//  NounViewController.m
//  learning_obj_c
//
//  Created by Christenson, Nick on 11/30/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import "NounViewController.h"
#import "DisplaySentenceViewController.h"

@interface NounViewController ()

@end

@implementation NounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)nounButtonTap:(id)sender {
    DisplaySentenceViewController *displaySentence = [self.storyboard instantiateViewControllerWithIdentifier:@"DisplaySentenceViewController"];
    displaySentence.adLibValues = [[NSMutableDictionary alloc]init];
    displaySentence.adLibValues = self.adLibValues;
    [displaySentence.adLibValues setValue:self.nounTextField.text forKey:@"noun"];
    [self.navigationController pushViewController:displaySentence animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DisplaySentenceViewController *displaySentence = segue.destinationViewController;
    displaySentence.adLibValues = [[NSMutableDictionary alloc]init];
    displaySentence.adLibValues = self.adLibValues;
    [displaySentence.adLibValues setValue:self.nounTextField.text forKey:@"noun"];
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

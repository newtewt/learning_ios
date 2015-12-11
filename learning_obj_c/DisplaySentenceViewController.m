//
//  DisplaySentenceViewController.m
//  learning_obj_c
//
//  Created by Christenson, Nick on 11/30/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import "DisplaySentenceViewController.h"
#import "MadLibTableViewController.h"
#import "SecondMadLibViewController.h"


@interface DisplaySentenceViewController ()

@end

@implementation DisplaySentenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.adLibSentenceTextView.text = [NSString stringWithFormat:@"This is noun %@ \n this is adjective %@ \n this is adverb %@", self.adLibValues[@"noun"], self.adLibValues[@"adjective"], self.adLibValues[@"adverb"]];
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

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondMadLibViewController *mabLibTableView = segue.destinationViewController;
    mabLibTableView.adLibValues = self.adLibValues;
    
}

@end

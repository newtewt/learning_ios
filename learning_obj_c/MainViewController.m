//
//  ViewController.m
//  learning_obj_c
//
//  Created by Christenson, Nick on 11/22/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import "MainViewController.h"
#import "PushViewController.h"
#import "TWFViewController.h"
#import "TWFAppDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.helloLabel.text = @"Touch the button";
    [self.button setTitle:@"Touch Me" forState:UIControlStateNormal];
    self.warningLabel.text = @"Enter Text";
    self.warningLabel.hidden=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleButtonClick:(id)sender {
    if ([self.textField.text length] != 0)
    {
        self.helloLabel.text = self.textField.text;
    }
    else
    {
        int counter = 0;
        while(counter < 5)
        {
            self.warningLabel.hidden=NO;
            counter += 1;
        }
        
    
    }
    

}

- (IBAction)startAdLibButton:(id)sender {
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"PushViewController"];
    [self.navigationController pushViewController:controller animated:YES];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];
}

@end

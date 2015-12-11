//
//  NounViewController.h
//  learning_obj_c
//
//  Created by Christenson, Nick on 11/30/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NounViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nounTextField;

@property NSMutableDictionary *adLibValues;

@end

//
//  PushViewController.h
//  learning_obj_c
//
//  Created by Christenson, Nick on 11/25/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PushViewController : UIViewController

@property NSString *labelValue;
@property (weak, nonatomic) IBOutlet UILabel *pushLabel;

@property (weak, nonatomic) IBOutlet UITextField *adLibTextField;

@property (weak, nonatomic) IBOutlet UIButton *adLibButton;

@property int currentStep;

@property NSString *updatedLabel;

@property NSMutableDictionary *values;

@end

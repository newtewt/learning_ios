//
//  DisplaySentenceViewController.h
//  learning_obj_c
//
//  Created by Christenson, Nick on 11/30/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DisplaySentenceViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *adlibSentenceLabel;
@property (weak, nonatomic) IBOutlet UITextView *adLibSentenceTextView;

@property NSMutableDictionary *adLibValues;
@end

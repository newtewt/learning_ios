//
//  MadLibTableViewController.h
//  learning_obj_c
//
//  Created by Christenson, Nick on 12/1/15.
//  Copyright (c) 2015 Christenson, Nick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MadLibTableViewController : UIViewController

@property NSMutableDictionary *adLibValues;
@property (weak, nonatomic) IBOutlet UITableView *madLibTableView;

@end

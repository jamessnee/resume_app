//
//  ViewController.h
//  James Snee WWDC
//
//  Created by James Snee on 01/05/2013.
//  Copyright (c) 2013 James Snee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Overview_VC : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property(strong)IBOutlet UITextView *main_text;
@property(strong)IBOutlet UIImageView *profile_image;
@property(strong)IBOutlet UIButton *twitter;
@property(strong)IBOutlet UIButton *linedin;
@property(strong)IBOutlet UIButton *github;
@property(strong)IBOutlet UIImageView *top_bar;
@property(strong)IBOutlet UILabel *name_label;
@property(strong)IBOutlet UITableView *table;

-(IBAction)open_link:(id)sender;

@end

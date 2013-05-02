//
//  Hobbies.h
//  James Snee WWDC
//
//  Created by James Snee on 01/05/2013.
//  Copyright (c) 2013 James Snee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Hobbies : UIViewController

@property(strong)IBOutlet UIScrollView *scroll;
@property(strong)IBOutlet UIView *content;

-(IBAction)close:(id)sender;

@end

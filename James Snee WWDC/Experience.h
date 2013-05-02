//
//  Experience.h
//  James Snee WWDC
//
//  Created by James Snee on 01/05/2013.
//  Copyright (c) 2013 James Snee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Experience : UIViewController <UIScrollViewDelegate>

@property(strong)IBOutlet UIScrollView *scroll;
@property(strong)IBOutlet UIView *content_view;

@property(strong)IBOutlet UIButton *dtgweather;
@property(strong)IBOutlet UIButton *scalebox;
@property(strong)IBOutlet UIButton *hay;
@property(strong)IBOutlet UIButton *ucam;
@property(strong)IBOutlet UIButton *ucam_article;
@property(strong)IBOutlet UIButton *icoda;

-(IBAction)link_clicked:(id)sender;

-(IBAction)close:(id)sender;

@end

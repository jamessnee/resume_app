//
//  Experience.m
//  James Snee WWDC
//
//  Created by James Snee on 01/05/2013.
//  Copyright (c) 2013 James Snee. All rights reserved.
//

#import "Experience.h"

@interface Experience ()

@end

@implementation Experience
@synthesize scroll,content_view;
@synthesize dtgweather,scalebox,hay,ucam,ucam_article,icoda;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[[self scroll] addSubview:content_view];
	[[self scroll] setContentSize:[[self content_view] frame].size];
}

-(IBAction)link_clicked:(id)sender{
	UIButton *caller = (UIButton *)sender;
	NSURL *url;
	
	if(caller == dtgweather)
		url = [NSURL URLWithString:@"https://itunes.apple.com/gb/app/dtg-weather/id608987252?mt=8"];
	else if(caller == scalebox)
		url = [NSURL URLWithString:@"https://itunes.apple.com/gb/app/scalebox-for-abrsm-grades/id593299414?mt=8"];
	else if(caller == hay)
		url = [NSURL URLWithString:@"https://itunes.apple.com/gb/app/how-are-you/id497779041?mt=8"];
	else if(caller == ucam)
		url = [NSURL URLWithString:@"https://itunes.apple.com/gb/app/ucam-library-search/id459882806?mt=8"];
	else if(caller == ucam_article)
		url = [NSURL URLWithString:@"http://www.varsity.co.uk/news/3702"];
	else if(caller == icoda)
		url = [NSURL URLWithString:@"https://itunes.apple.com/gb/app/icoda/id439249073?mt=8"];

	[[UIApplication sharedApplication] openURL:url];
}

-(IBAction)close:(id)sender{
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

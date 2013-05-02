//
//  Research.m
//  James Snee WWDC
//
//  Created by James Snee on 01/05/2013.
//  Copyright (c) 2013 James Snee. All rights reserved.
//

#import "Research.h"

@interface Research ()

@end

@implementation Research
@synthesize scroll,content;

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
	
	[[self scroll] addSubview:content];
	[[self scroll] setContentSize:[[self content] frame].size];
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

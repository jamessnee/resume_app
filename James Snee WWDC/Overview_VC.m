//
//  ViewController.m
//  James Snee WWDC
//
//  Created by James Snee on 01/05/2013.
//  Copyright (c) 2013 James Snee. All rights reserved.
//

#import "Overview_VC.h"
#import <QuartzCore/QuartzCore.h>
#import "Overview_Cell.h"
#import "EducationViewController.h"
#import "Experience.h"

@interface Overview_VC ()

@end

@implementation Overview_VC
@synthesize main_text,profile_image,twitter,linedin,github,table;

NSArray *sections;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	sections = @[@"Education",@"Experience",@"Research",@"Skills",@"Hobbies"];
	
	[main_text setClipsToBounds:YES];
	main_text.layer.cornerRadius = 5.0f;
	
	[profile_image setClipsToBounds:YES];
	profile_image.layer.cornerRadius = 5.0f;
	
	[twitter setClipsToBounds:YES];
	twitter.layer.cornerRadius = 5.0f;
	
	[linedin setClipsToBounds:YES];
	linedin.layer.cornerRadius = 5.0f;
	
	[profile_image setAlpha:0.0f];
	[main_text setAlpha:0.0f];
	[twitter setAlpha:0.0f];
	[github setAlpha:0.0f];
	[linedin setAlpha:0.0f];
	[table setAlpha:0.0f];
	
	[UIView animateWithDuration:0.75
						  delay:0.0
						options:UIViewAnimationOptionCurveEaseInOut
					 animations:^{
						 [profile_image setAlpha:1.0f];
						 [main_text setAlpha:1.0f];
					 }
					 completion:nil];
	
	[UIView animateWithDuration:0.75
						  delay:0.20
						options:UIViewAnimationOptionCurveEaseInOut
					 animations:^{
						 [twitter setAlpha:1.0f];
					 }
					 completion:nil];
	
	[UIView animateWithDuration:0.75
						  delay:0.30
						options:UIViewAnimationOptionCurveEaseInOut
					 animations:^{
						 [github setAlpha:1.0f];
					 }
					 completion:nil];
	
	[UIView animateWithDuration:0.75
						  delay:0.40
						options:UIViewAnimationOptionCurveEaseInOut
					 animations:^{
						 [linedin setAlpha:1.0f];
					 }
					 completion:nil];
	
	[UIView animateWithDuration:0.75
						  delay:0.5
						options:UIViewAnimationOptionCurveEaseInOut
					 animations:^{
						 [table setAlpha:1.0f];
	}
					 completion:nil];
}

-(IBAction)open_link:(id)sender{
	NSURL *url;
	UIButton *caller = (UIButton *)sender;
	if(caller == twitter)
		url = [NSURL URLWithString:@"http://www.twitter.com/jamssn"];
	else if(caller == github)
		url = [NSURL URLWithString:@"http://www.github.com/jamessnee"];
	else if(caller == linedin)
		url = [NSURL URLWithString:@"http://www.linkedin.com/pub/james-snee/2b/144/91"];
	[[UIApplication sharedApplication] openURL:url];
}

#pragma mark - TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	[[tableView cellForRowAtIndexPath:indexPath] setSelected:NO];
	
	UIViewController *popup_view;
	NSString *section = [sections objectAtIndex:[indexPath row]];
	if([section isEqualToString:@"Education"])
		popup_view = [[EducationViewController alloc] initWithNibName:@"EducationView" bundle:nil];
	else if([section isEqualToString:@"Experience"])
		popup_view = [[EducationViewController alloc] initWithNibName:@"Experience" bundle:nil];
	else if([section isEqualToString:@"Research"])
		popup_view = [[EducationViewController alloc] initWithNibName:@"Research" bundle:nil];
	else if([section isEqualToString:@"Skills"])
		popup_view = [[EducationViewController alloc] initWithNibName:@"Skills" bundle:nil];
	else if([section isEqualToString:@"Hobbies"])
		popup_view = [[EducationViewController alloc] initWithNibName:@"Hobbies" bundle:nil];
	if (popup_view)
		[self presentViewController:popup_view animated:YES completion:nil];
}

#pragma mark - TableView DataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	NSString *identifier = @"James_Cell";
	
	//Dequeue a cell if there is one around
	Overview_Cell *cell = (Overview_Cell *)[tableView dequeueReusableCellWithIdentifier:identifier];
	if (cell == nil) {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Overview_Cell" owner:self options:nil];
		for(id curr_object in topLevelObjects){
			if([curr_object isKindOfClass:[Overview_Cell class]]){
				cell = (Overview_Cell *)curr_object;
				[cell setSelectionStyle:UITableViewCellSelectionStyleNone];
				break;
			}
		}
	}
	NSString *section_name = [sections objectAtIndex:[indexPath row]];
	UIImage *image;
	if([section_name isEqualToString:@"Education"])
		image = [UIImage imageNamed:@"mortar"];
	else if([section_name isEqualToString:@"Experience"])
		image = [UIImage imageNamed:@"PlusPlus"];
	else if([section_name isEqualToString:@"Research"])
		image = [UIImage imageNamed:@"testtube"];
	else if([section_name isEqualToString:@"Skills"])
		image = [UIImage imageNamed:@"terminal"];
	else if([section_name isEqualToString:@"Hobbies"])
		image = [UIImage imageNamed:@"glider"];
	else
		image = [UIImage imageNamed:@"PlusPlus"];
	[[cell label] setText:[sections objectAtIndex:[indexPath row]]];
	[[cell section_image] setImage:image];
	return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return [sections count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  FirstViewController.m
//  Silent Rave
//
//  Created by micah on 7/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController
@synthesize startStopButton;
@synthesize datePicker;
@synthesize currentSongLabel;
@synthesize chooseSongButton;

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload
{
    [self setChooseSongButton:nil];
    [self setCurrentSongLabel:nil];
    [self setDatePicker:nil];
    [self setStartStopButton:nil];
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc {
    [chooseSongButton release];
    [currentSongLabel release];
    [datePicker release];
    [startStopButton release];
    [super dealloc];
}

- (IBAction)chooseSong:(id)sender {

}

- (IBAction)startStop:(id)sender {
}
@end

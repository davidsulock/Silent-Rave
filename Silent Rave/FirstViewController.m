//
//  FirstViewController.m
//  Silent Rave
//
//  Created by micah on 7/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "Silent_RaveAppDelegate.h"

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
    MPMediaPickerController *picker = [[MPMediaPickerController alloc] initWithMediaTypes: MPMediaTypeAnyAudio]; 
    [picker setDelegate: self];
    [picker setAllowsPickingMultipleItems: NO];
    picker.prompt = NSLocalizedString (@"Choose Song", "Everyone in the rave should choose the same file");
    [self presentModalViewController: picker animated: YES];
    [picker release];
}

- (IBAction)startStop:(id)sender {
}

- (void) mediaPicker:(MPMediaPickerController *)picker didPickMediaItems:(MPMediaItemCollection *)collection {
    Silent_RaveAppDelegate* delegate = (Silent_RaveAppDelegate*)[UIApplication sharedApplication].delegate;
    [self dismissModalViewControllerAnimated: YES];
    
    if([collection.items count] > 0) {
        delegate.song = [collection.items objectAtIndex:0];
        currentSongLabel.text = [delegate.song valueForProperty:MPMediaItemPropertyTitle];
    }
    
}

- (void)mediaPickerDidCancel:(MPMediaPickerController *)mediaPicker {
    Silent_RaveAppDelegate* delegate = (Silent_RaveAppDelegate*)[UIApplication sharedApplication].delegate;
    [self dismissModalViewControllerAnimated: YES];
    delegate.song = nil;
    currentSongLabel.text = @"no song currently selected";
}



@end

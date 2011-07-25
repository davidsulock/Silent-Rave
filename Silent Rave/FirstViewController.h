//
//  FirstViewController.h
//  Silent Rave
//
//  Created by micah on 7/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>


@interface FirstViewController : UIViewController <MPMediaPickerControllerDelegate> {
    UIButton *chooseSongButton;
    UILabel *currentSongLabel;
    UIDatePicker *datePicker;
    UIButton *startStopButton;
}

@property (nonatomic, retain) IBOutlet UIButton *startStopButton;
@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, retain) IBOutlet UILabel *currentSongLabel;

@property (nonatomic, retain) IBOutlet UIButton *chooseSongButton;

- (IBAction)startStop:(id)sender;
- (IBAction)chooseSong:(id)sender;

@end

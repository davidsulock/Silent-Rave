//
//  Silent_RaveAppDelegate.h
//  Silent Rave
//
//  Created by micah on 7/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface Silent_RaveAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    MPMediaItem* song;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
@property (nonatomic, retain) IBOutlet MPMediaItem *song;

@end

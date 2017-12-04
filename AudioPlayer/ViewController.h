//
//  ViewController.h
//  AudioPlayer
//
//  Created by Student-15 on 13/10/17.
//  Copyright (c) 2017 chaitali. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
@interface ViewController : UIViewController
- (IBAction)PlayButton:(id)sender;

- (IBAction)PauseBUtton:(id)sender;

- (IBAction)StopButton:(id)sender;

@property (strong, nonatomic) IBOutlet UISlider *sli1;
- (IBAction)VolumeSlider:(id)sender;

@property (strong, nonatomic) IBOutlet UISlider *sli2;
- (IBAction)SeekSlider:(id)sender;

@property AVAudioPlayer *player;

@property NSTimer *timer;

@end


//
//  ViewController.m
//  AudioPlayer
//
//  Created by Student-15 on 13/10/17.
//  Copyright (c) 2017 chaitali. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
BOOL flag=NO;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str=@"01 - Maana Ke Hum Yaar Nahin [DJMaza.Life]";
    NSURL *url=[[NSBundle mainBundle]URLForResource:str withExtension:@"mp3"];
    self.player=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    self.sli2.minimumValue=0;
    self.sli2.maximumValue=self.player.duration;
    self.sli1.value=0.5;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)seekTime
{
    if(flag==NO)
    {
    _sli2.value+=1;
    }
}
- (IBAction)PlayButton:(id)sender {
    self.timer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(seekTime) userInfo:nil repeats:YES];
    self.player.volume=self.sli1.value;
    [self.player play];
    self.player.currentTime=self.sli2.value;
}

- (IBAction)PauseBUtton:(id)sender {
    [self.player pause];
    flag=YES;
}

- (IBAction)StopButton:(id)sender {
    [self.player stop];
    self.sli2.value=0;
    [self.timer invalidate];
}
- (IBAction)VolumeSlider:(id)sender {
    self.player.volume=self.sli1.value;
}
- (IBAction)SeekSlider:(id)sender {
    self.player.currentTime=self.sli2.value;
}
@end

//
//  ViewController.h
//  RemoteControlEvents
//
//  Created by Quang Dai on 4/22/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;
@property AVPlayer *player;
@property MPRemoteCommandCenter * rcc;
@property MPRemoteCommand *pause;
@property (retain, atomic) MPRemoteCommand *play;
@property MPRemoteCommand *toggle;
@property MPRemoteCommand *previous;
@property MPRemoteCommand *next;
@property MPRemoteCommand *seekForward;
@property MPRemoteCommand *seekBackward;
@property CMTime *duration;
@end


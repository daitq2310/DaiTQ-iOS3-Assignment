//
//  ViewController.m
//  RemoteControlEvents
//
//  Created by Quang Dai on 4/22/16.
//  Copyright © 2016 Quang Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    _lblStatus.text = @"Playing";
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"UntilYou" ofType:@"mp3"];
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    _player = [[AVPlayer alloc] initWithURL:soundFileURL];
    //_player.numberOfLoops = -1;
    //[_player play];
    
    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
    _rcc = [MPRemoteCommandCenter sharedCommandCenter];
    _play = [_rcc playCommand];
    _pause = [_rcc pauseCommand];
    _toggle = [_rcc togglePlayPauseCommand];
    _next = [_rcc nextTrackCommand];
    _previous = [_rcc previousTrackCommand];
    _seekForward = [_rcc seekForwardCommand];
    _seekBackward = [_rcc seekBackwardCommand];
    [_play addTarget:self action:@selector(playClicked)];
    [_pause addTarget:self action:@selector(pauseClicked)];
    [_toggle addTarget:self action:@selector(toggleClicked)];
    [_next addTarget:self action:@selector(nextClicked)];
    [_previous addTarget:self action:@selector(previousClicked)];
    [_seekForward addTarget:self action:@selector(seekForwardClicked)];
    [_seekBackward addTarget:self action:@selector(seekBackwardClicked)];
}

- (void) playClicked {
    NSLog(@"Play Clicked");
    [_player play];
    [self displayTrackInfo];
}

- (void) pauseClicked {
    NSLog(@"Pause Clicked");
    [_player pause];
}

- (void) toggleClicked {
    NSLog(@"Toggle");
}

- (void) nextClicked {
    NSLog(@"Next Track Clicked");
}

- (void) previousClicked {
    NSLog(@"Previous Track Clicked");
}

- (void) seekForwardClicked {
    NSLog(@"Seek Forward Clicked");
    _player.rate = 1.2f;
}

- (void) seekBackwardClicked {
    NSLog(@"Seek Backward Clicked");
    _player.rate = -1.2f;
}

- (void) displayTrackInfo {
    MPNowPlayingInfoCenter *playerPlaying = [MPNowPlayingInfoCenter defaultCenter];
    NSMutableDictionary *playerInfo = [[NSMutableDictionary alloc] init];
    AVPlayerItem *playerItem = _player.currentItem;
    NSArray *playerData = [playerItem.asset commonMetadata];
    for (AVMetadataItem *metadataItem in playerData) {
        NSString *key = metadataItem.commonKey;
        NSString *value = metadataItem.value;

        NSLog(@"%@", key);
        if ([key isEqualToString:@"title"]) {
            [playerInfo setObject:value forKey:MPMediaItemPropertyTitle];
        }
        
        if ([key isEqualToString:@"artist"]) {
            [playerInfo setObject:value forKey:MPMediaItemPropertyArtist];
        }
        
        if ([key isEqualToString:@"albumName"]){
            [playerInfo setObject:value forKey:MPMediaItemPropertyAlbumTitle];
            
        }
        [playerInfo setObject:@1.0f forKey:MPNowPlayingInfoPropertyPlaybackRate];
        [playerInfo setObject:[NSNumber numberWithFloat:CMTimeGetSeconds(playerItem.duration)] forKey:MPMediaItemPropertyPlaybackDuration];
     }
    playerPlaying.nowPlayingInfo = playerInfo;
}

- (BOOL) canBecomeFirstResponder{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

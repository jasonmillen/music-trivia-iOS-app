//
//  Q.h
//  M
//
//  Created by Jason Millen on 4/29/15.
//  Copyright (c) 2015 Jason Millen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface Q : NSObject
{
    AVAudioPlayer* song;
    
    NSString *A1;
    NSString *A2;
    NSString *A3;
    NSString *A4;
    int correct_answer;
}

-(void) setA1:(NSString*) Ans1;
-(void) setA2:(NSString*) Ans2;
-(void) setA3:(NSString*) Ans3;
-(void) setA4:(NSString*) Ans4;
-(void) set_correct_answer:(int) correct_ans;
-(void) set_song:(AVAudioPlayer*) song_in;

-(NSString*) getA1;
-(NSString*) getA2;
-(NSString*) getA3;
-(NSString*) getA4;
-(int) get_correct_answer;
-(AVAudioPlayer*) get_song;


@end

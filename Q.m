//
//  Q.m
//  M
//
//  Created by Jason Millen on 4/29/15.
//  Copyright (c) 2015 Jason Millen. All rights reserved.
//

#import "Q.h"

@implementation Q

-(void) setA1:(NSString *)Ans1 {
    A1 = Ans1;
}

-(void) setA2:(NSString *)Ans2 {
    A2 = Ans2;
}

-(void) setA3:(NSString *)Ans3 {
    A3 = Ans3;
}

-(void) setA4:(NSString *)Ans4 {
    A4 = Ans4;
}

-(void) set_correct_answer:(int)correct_ans {
    correct_answer = correct_ans;
}

-(void) set_song:(AVAudioPlayer*) song_in {
    song = song_in;
}

-(NSString*) getA1 {
    return A1;
}
-(NSString*) getA2 {
    return A2;
}
-(NSString*) getA3 {
    return A3;
}
-(NSString*) getA4 {
    return A4;
}
-(int) get_correct_answer {
    return correct_answer;
}
-(AVAudioPlayer*) get_song {
    return song;
}

@end

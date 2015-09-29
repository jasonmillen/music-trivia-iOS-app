//
//  Questions.h
//  M
//
//  Created by Kris on 4/28/15.
//  Copyright (c) 2015 millen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <Foundation/Foundation.h>
#import "Q.h"

BOOL Answer1Correct;
BOOL Answer2Correct;
BOOL Answer3Correct;
BOOL Answer4Correct;

BOOL GameInProgress;

int ScoreNumber;
int LivesNumber;

Q *questions[3];

@interface Questions : UIViewController

{
    IBOutlet UILabel *Score;
    IBOutlet UILabel *Lives;
    IBOutlet UIImageView *Result;
    IBOutlet UIButton *Answer1;
    IBOutlet UIButton *Answer2;
    IBOutlet UIButton *Answer3;
    IBOutlet UIButton *Answer4;
    IBOutlet UIButton *NextQuestion;
    IBOutlet UIButton *Exit;
    
    AVAudioPlayer* KingsOfLeon_SexOnFire;
    AVAudioPlayer* TheBeatles_ComeTogether;
    AVAudioPlayer* TheWindandTheWave_ItsaLongerRoadtoCaliforniaThanIThought;
    
    AVAudioPlayer* curr_audio;
    
}
-(IBAction)NextQuestion:(id)sender;
-(IBAction)Exit:(id)sender;
-(IBAction)Answer1:(id)sender;
-(IBAction)Answer2:(id)sender;
-(IBAction)Answer3:(id)sender;
-(IBAction)Answer4:(id)sender;
-(void)DoQuestion;
-(void)RightAnswer;
-(void)WrongAnswer;


@end


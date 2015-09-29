//
//  Questions.m
//  M
//
//  Created by Kris on 4/28/15.
//  Copyright (c) 2015 millen. All rights reserved.
//

#import "Questions.h"

@interface Questions ()

@end

@implementation Questions

-(IBAction)NextQuestion:(id)sender {
    [self DoQuestion];
}

-(IBAction)Exit:(id)sender {
    GameInProgress = NO;
    [curr_audio pause];
    curr_audio.currentTime = 0;
}

-(void)RightAnswer {
    ++ScoreNumber;
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    Result.image = [UIImage imageNamed:@"correct.jpg"];
    Result.hidden = NO;
    NextQuestion.hidden = NO;
    [curr_audio pause];
    curr_audio.currentTime = 0;
    
}

-(void)WrongAnswer {
    --LivesNumber;
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    Result.image = [UIImage imageNamed:@"incorrect.png"];
    Result.hidden = NO;
    NextQuestion.hidden = NO;
    [curr_audio pause];
    curr_audio.currentTime = 0;
    
    if(LivesNumber == 0) {
        NextQuestion.hidden = YES;
        GameInProgress = NO;
    }
}

-(IBAction)Answer1:(id)sender {
    
    if(Answer1Correct == YES) {
        [self RightAnswer];
    }
    else {
        [self WrongAnswer];
    }
    
}
-(IBAction)Answer2:(id)sender {
    
    if(Answer2Correct == YES) {
        [self RightAnswer];
    }
    else {
        [self WrongAnswer];
    }
    
}
-(IBAction)Answer3:(id)sender {
    
    if(Answer3Correct == YES) {
        [self RightAnswer];
    }
    else {
        [self WrongAnswer];
    }
    
}
-(IBAction)Answer4:(id)sender {
    
    if(Answer4Correct == YES) {
        [self RightAnswer];
    }
    else {
        [self WrongAnswer];
    }
    
}

-(void)DoQuestion {
    
    int idx = arc4random() % 3;
    
    Result.hidden = YES;
    NextQuestion.hidden = YES;
    
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    curr_audio = [questions[idx] get_song];
    [curr_audio prepareToPlay];
    [curr_audio play];
    
    if([questions[idx] get_correct_answer] == 1) {
        Answer1Correct = YES;
    }
    else if([questions[idx] get_correct_answer] == 2) {
        Answer2Correct = YES;
    }
    else if([questions[idx] get_correct_answer] == 3) {
        Answer3Correct = YES;
    }
    else {
        Answer4Correct = YES;
    }
    
    [Answer1 setTitle:[questions[idx] getA1] forState:UIControlStateNormal];
    [Answer2 setTitle:[questions[idx] getA2] forState:UIControlStateNormal];
    [Answer3 setTitle:[questions[idx] getA3] forState:UIControlStateNormal];
    [Answer4 setTitle:[questions[idx] getA4] forState:UIControlStateNormal];
    
    Answer1.hidden = NO;
    Answer2.hidden = NO;
    Answer3.hidden = NO;
    Answer4.hidden = NO;
}

- (void)viewDidLoad {
    
    Answer1.titleLabel.numberOfLines = 3;
    Answer2.titleLabel.numberOfLines = 3;
    Answer3.titleLabel.numberOfLines = 3;
    Answer4.titleLabel.numberOfLines = 3;
    
    Q *q0 = [[Q alloc]init];
    NSString* path0 = [[NSBundle mainBundle] pathForResource:@"KingsOfLeon_SexOnFire" ofType:@"mp3"];
    NSURL* file0 = [NSURL fileURLWithPath:path0];
    KingsOfLeon_SexOnFire = [[AVAudioPlayer alloc] initWithContentsOfURL:file0 error:nil];
    [q0 set_song:KingsOfLeon_SexOnFire];
    [q0 setA1:@"Kings of Leon - Sex on Fire"];
    [q0 setA2:@"Kings of Leon - Supersoaker"];
    [q0 setA3:@"The Killers - Mr. Brightside"];
    [q0 setA4:@"The Killers - Sex on Fire"];
    [q0 set_correct_answer:1];
    questions[0] = q0;
    
    Q *q1 = [[Q alloc]init];
    NSString* path1 = [[NSBundle mainBundle] pathForResource:@"TheBeatles_ComeTogether" ofType:@"mp3"];
    NSURL* file1 = [NSURL fileURLWithPath:path1];
    TheBeatles_ComeTogether = [[AVAudioPlayer alloc] initWithContentsOfURL:file1 error:nil];
    [q1 set_song:TheBeatles_ComeTogether];
    [q1 setA1:@"The Beatles - Here Comes the Sun"];
    [q1 setA2:@"The Beatles - Something"];
    [q1 setA3:@"The Beatles - Let it Be"];
    [q1 setA4:@"The Beatles - Come Together"];
    [q1 set_correct_answer:4];
    questions[1] = q1;
    
    Q *q2 = [[Q alloc]init];
    NSString* path2 = [[NSBundle mainBundle] pathForResource:@"TheWindandTheWave_ItsaLongerRoadtoCaliforniaThanIThought" ofType:@"mp3"];
    NSURL* file2 = [NSURL fileURLWithPath:path2];
    TheWindandTheWave_ItsaLongerRoadtoCaliforniaThanIThought = [[AVAudioPlayer alloc] initWithContentsOfURL:file2 error:nil];
    [q2 set_song:TheWindandTheWave_ItsaLongerRoadtoCaliforniaThanIThought];
    [q2 setA1:@"The Beatles - Here Comes the Sun"];
    [q2 setA2:@"The Wind and the Wave - It's A Longer Road to California than I Thought"];
    [q2 setA3:@"The Generationals - When They Fight They Fight"];
    [q2 setA4:@"Prince - I Wanna Be Your Lover"];
    [q2 set_correct_answer:2];
    questions[2] = q2;
    
    
    if(GameInProgress == NO) {
        LivesNumber = 3;
        ScoreNumber = 0;
        GameInProgress = YES;
    }
    
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self DoQuestion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

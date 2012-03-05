//
//  Character.m
//  BindMansBluff
//
//  Created by Nathan Ketzner on 11/16/11.
//  Copyright (c) 2011 Northwest Kansas Technical College. All rights reserved.
//

#import "Character.h"

@implementation Character
@synthesize name;
@synthesize gender;
@synthesize ourCard;
@synthesize chips;
- (id) initCharacter:(NSString *) characterName 
       andWithGender:(NSString *)characterGender
        andWithChips:(int) chipCount;
{
    name = characterName;
    chips = chipCount;
    gender = characterGender;
    
    NSString * greetingSoundLocation = [NSString stringWithFormat:@"%@/Intro.mp3",characterName];
    NSURL * greetingURL = [[NSBundle mainBundle] URLForResource:greetingSoundLocation withExtension:@""];
    greeting = [[AVAudioPlayer alloc] initWithContentsOfURL:greetingURL error:nil];
    NSLog(greetingSoundLocation);
    [greeting play];
    
    return self;
    
}

- (int) placeBet
{
    return 5;
}
- (void) playGreeting
{
    
}
- (void) playLosingSound
{
    
}
- (void) playWinningSound
{
    
}
- (void) playTaunt
{
    
}
- (void) playTick
{
    
}
- (void) getCardFromDealer
{
    
}






@end

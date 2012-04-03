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

@synthesize ourCard;
@synthesize chips;
- (id) initCharacter:(NSString *) characterName 
       andWithGender:(NSString *)characterGender
        andWithChips:(int) chipCount;
{
    name = characterName;
    chips = chipCount;
    
    
    NSString * greetingSoundLocation = [NSString stringWithFormat:@"%@/Intro.mp3",characterName];
    NSURL * greetingURL = [[NSBundle mainBundle] URLForResource:greetingSoundLocation withExtension:@""];
    greeting = [[AVAudioPlayer alloc] initWithContentsOfURL:greetingURL error:nil];

    [greeting play];
    
    return self;
    
}
//return 0 for check if minimum bet = 0
//return -1 for fold
//look at other players card, make a decision of cards
- (int) requestBetFromPlayerWithMinimum:(int) minimumBet
{
    
}

//playing greeting sound,and animation,call event after sound is done
- (void) introduceYourself{

}

//- (void) playTaunt;
//- (void) playTick;



//increase their chips,clear the cards,play winning sound or losing sound
- (void) userWonTheHand:(BOOL) handWasWon
          withPotAmount:(int) potAmount
{
    
}
//if the player has enough money for ante this will return true
-(BOOL) willPlayHandWithAnteAmount:(int) anteAmount{

}






@end

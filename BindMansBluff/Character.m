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
    
    NSURL * winningURL = [[NSBundle mainBundle] URLForResource:@"winning" withExtension:@"mp3"];
    winning = [[AVAudioPlayer alloc] initWithContentsOfURL:winningURL error:nil];
    
    [winning play];
    
    NSURL * tauntURL = [[NSBundle mainBundle] URLForResource:@"taunt" withExtension:@"mp3"];
    taunt = [[AVAudioPlayer alloc] initWithContentsOfURL:tauntURL error:nil];
    
    [taunt play];
    
    NSURL * losingURL = [[NSBundle mainBundle] URLForResource:@"losing" withExtension:@"mp3"];
    losing = [[AVAudioPlayer alloc] initWithContentsOfURL:losingURL error:nil];
    
    [losing play];
    
    return self;
    
}

//playing greeting sound,and animation,call event after sound is done
- (void) introduceYourself
{
    NSURL *url1 = [[NSBundle mainBundle]URLForResource:@"Yeehaw" withExtension:@"wav"];
    Yeehaw = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
    
    [Yeehaw play];

}

//- (void) playTaunt;
//- (void) playTick;



//increase their chips,clear the cards,play winning sound or losing sound
- (void) userWonTheHand:(BOOL) handWasWon
          withPotAmount:(int) potAmount
{
    if(handWasWon){
        //winning sound with random algorithm
        
        [winning play];
        
        chips = potAmount+chips;
    }else {
        
        //losing sound
        
        [losing play];
    }
}
//if the player has enough money for ante this will return true
-(BOOL) willPlayHandWithAnteAmount:(int) anteAmount{
    if(chips > anteAmount){
        chips -= anteAmount;
        return YES;
    }
    return NO;
}
- (void) submitBetAmount:(int)bet
{
    //taunt sound if confident with bet
    chips -= bet;
}
- (void) logThisCharacter{
    NSLog(@"Character Name is %@",name);
    NSLog(@"Chip Count %@",chips);
}





@end

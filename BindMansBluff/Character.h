//
//  Character.h
//  BindMansBluff
//
//  Created by Nathan Ketzner on 11/16/11.
//  Copyright (c) 2011 Northwest Kansas Technical College. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import <AVFoundation/AVFoundation.h>

@interface Character : NSObject
{
    AVAudioPlayer * greeting;
    AVAudioPlayer * losing;
    AVAudioPlayer * winning;
    AVAudioPlayer * taunt;
    AVAudioPlayer * Yeehaw;
}
@property BOOL folded;
@property (nonatomic, strong) NSString * name;
@property int chips;
//the dealer sets this property without another method
@property (nonatomic, strong) Card * ourCard;
@property (nonatomic, strong) NSArray *charactersInHand;

- (id) initCharacterWithName:(NSString *) characterName 
                andWithChips:(int) chipCount;

//return 0 for check if minimum bet = 0
//return -1 for fold
//look at other players card, make a decision of cards
- (int) requestBetFromPlayerWithMinimum:(int) minimumBet;

//playing greeting sound
- (void) introduceYourself;

//- (void) playTaunt;
//- (void) playTick;



//increase their chips,clear the cards,play winning sound or losing sound
- (void) userWonTheHand:(BOOL) handWasWon
          withPotAmount:(int) potAmount;
//if the player has enough money for ante this will return true
-(BOOL) willPlayHandWithAnteAmount:(int) anteAmount;
-(void)logThisCharacter;

@end

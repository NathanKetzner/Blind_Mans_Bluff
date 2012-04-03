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
}
@property (nonatomic, strong) NSString * name;
@property int chips;
//the dealer sets this property without another method
@property (nonatomic, strong) Card * ourCard;
@property (nonatomic, strong) NSArray *charactersInHand;

- (id) initCharacter:(NSString *) characterName 
       andWithGender:(NSString *)characterGender
        andWithChips:(int) chipCount;
- (int) placeBet;
- (void) playGreeting;
- (void) playLosingSound;
- (void) playWinningSound;
- (void) playTaunt;
- (void) playTick;
- (void) getCardFromDealer;
- (void) submitBetAmount:(int)bet;
- (void) logThisCharacter;

@end

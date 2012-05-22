//
//  Deck.h
//  BindMansBluff
//
//  Created by Ben Coumerilh on 11/1/11.
//  Copyright (c) 2011 Northwest Kansas Technical College. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
{
    NSMutableArray * cardDeck;
    UIImage * spriteImage;
} 
@property int currentCard;
-(id) initWithAFullDeck;
-(void) logThisDeck;
-(void) shuffle;
-(Card *)dealCard;
@end

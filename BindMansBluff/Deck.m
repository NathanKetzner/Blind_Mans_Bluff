//
//  Deck.m
//  BindMansBluff
//
//  Created by Ben Coumerilh on 11/1/11.
//  Copyright (c) 2011 Northwest Kansas Technical College. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@implementation Deck

-(id)initWithAFullDeck
{
    for (int i = 2; i <=14; i++) 
    {
        if (!cardDeck) {
            cardDeck = [[NSMutableArray alloc] initWithCapacity:52];
        }
        Card * temp1 = [[Card alloc] initWithSuit:@"Hearts" andWithValue:i andWithFrame:CGRectMake(100, 100, 100, 100)];
        Card * temp2 = [[Card alloc] initWithSuit:@"Spades" andWithValue:i andWithFrame:CGRectMake(100, 100, 100, 100)];
        Card * temp3 = [[Card alloc] initWithSuit:@"Clubs"
            andWithValue:i andWithFrame:CGRectMake(100, 100, 100, 100)];
        Card * temp4 = [[Card alloc] initWithSuit:@"Diamonds"
            andWithValue:i andWithFrame:CGRectMake(100, 100, 100, 100)];
        [cardDeck addObject:temp1];
        [cardDeck addObject:temp2];
        [cardDeck addObject:temp3];
        [cardDeck addObject:temp4];
    }
    
    return self;
}

-(void) logThisDeck
{
    for(int i = 0; i < [cardDeck count]; i++)
    {
        [[cardDeck objectAtIndex:i] logThisCard];
    }
}

-(void) shuffle
{
    for (int i = [cardDeck count] - 1; i > 0; i--) {
        int ourRandomNumber = arc4random() % i;
        [cardDeck exchangeObjectAtIndex:i withObjectAtIndex:ourRandomNumber];
    }
}








@end

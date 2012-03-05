//
//  Card.m
//  BindMansBluff
//
//  Created by Ben Coumerilh on 10/27/11.
//  Copyright (c) 2011 Northwest Kansas Technical College. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize suit;
@synthesize value;
@synthesize cardFrame; 

-(id)initWithSuit:(NSString *)newSuit
     andWithValue:(int) cardValue
     andWithFrame:(CGRect)theFrame;
{
    self.suit = newSuit;
    self.value = cardValue;
    self.cardFrame = theFrame;
    return self;
}

- (void) logThisCard
{
    NSLog(@"\n============================\n");
    NSLog(@"Suit = %@\n",self.suit);
    NSLog(@"Value = %d\n",self.value);
    NSLog(@"Card Location Data \n x = %f\n y = %f\n Size Data\n width= %f\n height= %f\n\n",self.cardFrame.origin.x, self.cardFrame.origin.y, self.cardFrame.size.width, self.cardFrame.size.height); 
}

@end

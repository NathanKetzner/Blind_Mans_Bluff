//
//  Deck.h
//  BindMansBluff
//
//  Created by Ben Coumerilh on 11/1/11.
//  Copyright (c) 2011 Northwest Kansas Technical College. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Deck : NSObject
{
    NSMutableArray * cardDeck;
    UIImage * spriteImage;
}
-(id) initWithAFullDeck;
-(void) logThisDeck;
-(void) shuffle;
@end

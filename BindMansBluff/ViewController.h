//
//  ViewController.h
//  BindMansBluff
//
//  Created by Ben Coumerilh on 10/27/11.
//  Copyright (c) 2011 Northwest Kansas Technical College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Deck.h"
#import "Character.h"

@interface ViewController : UIViewController
{
    Deck * ourDeck;
}
@property (nonatomic, strong) Character* convict1;

@end

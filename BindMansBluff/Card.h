//
//  Card.h
//  BindMansBluff
//
//  Created by Ben Coumerilh on 10/27/11.
//  Copyright (c) 2011 Northwest Kansas Technical College. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (nonatomic,strong) NSString * suit;
@property int value;
@property CGRect cardFrame;
- (void) logThisCard;
-(id)initWithSuit:(NSString *)newSuit
     andWithValue:(int) cardValue
     andWithFrame:(CGRect)theFrame;
//Jaurex's Comment

@end

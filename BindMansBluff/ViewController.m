//
//  ViewController.m
//  BindMansBluff
//
//  Created by Ben Coumerilh on 10/27/11.
//  Copyright (c) 2011 Northwest Kansas Technical College. All rights reserved.
//
//Added this file to my own branch-March 5th 2012
#import "ViewController.h"
#import "Character.h"

@implementation ViewController
@synthesize convict1,players,stillPlaying,currentPlayer;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    players = [[NSMutableArray alloc]init];
    stillPlaying = YES;
    
    Character * player1 = [[Character alloc] initCharacterWithName:@"player 1" andWithChips:50];
    Character * player2 = [[Character alloc] initCharacterWithName:@"player 2" andWithChips:50];
    Character * player3 = [[Character alloc] initCharacterWithName:@"player 3" andWithChips:50];
    [players addObject:player1];
    [players addObject:player2];
    [players addObject:player3];
    //YOYOYO!!!! CH-CH-CHeck it out! 
    if (!ourDeck)
    {
        ourDeck = [[Deck alloc] initWithAFullDeck];
        [ourDeck shuffle];
        [ourDeck logThisDeck];
    }
    [self gameController];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib
}

- (void)viewDidUnload
{
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}
-(void)gameController
{
    while ([[players objectAtIndex:0] chips]>0 && stillPlaying) {
        for (int i=0; i<[players count]; i++) {
            if(![[players objectAtIndex:i] willPlayHandWithAnteAmount:1]){
                [[players objectAtIndex:i] setFolded:YES];
            }
        }
        for (int i =0; i < [players count]; i++) {
            [[players objectAtIndex:i] setOurCard:[ourDeck dealCard]];
            [[players objectAtIndex:i] logThisCharacter];
        }
        //temporary code
        stillPlaying = NO;
        [ourDeck shuffle];
    }
    NSLog(@"Done with game controller setup");
}
    

@end

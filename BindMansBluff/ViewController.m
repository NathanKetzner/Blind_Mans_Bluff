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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    if (!ourDeck)
    {
        ourDeck = [[Deck alloc] initWithAFullDeck];
        [ourDeck shuffle];
        [ourDeck logThisDeck];
    }
    Character * convict = [[Character alloc] initCharacter:@"convict" andWithGender:@"it" andWithChips:50];
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

@end

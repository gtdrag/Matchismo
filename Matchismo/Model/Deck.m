//
//  Deck.m
//  Matchismo
//
//  Created by George Drag on 9/27/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards; //these will be of Card type

@end


@implementation Deck

- (NSMutableArray *) cards
{
    if(!_cards) _cards = [[NSMutableArray alloc]init];
    return _cards;
}

- (void)addcard: (Card *)card atTop: (BOOL)atTop
{
    if(atTop)
    {
        [self.cards insertObject:card atIndex:0];
    }
    else
    {
        [self.cards addObject:card];
    }

    
}

- (void)addcard: (Card *)card
{
    [self addcard:card atTop:NO];

}

-(Card *)drawRandomCard
{

    Card *randomCard = nil;

   if([self.cards count]) {
    unsigned index  = arc4random() % [self.cards count];
    randomCard = self.cards[index];
    [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end

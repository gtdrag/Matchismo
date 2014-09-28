//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by George Drag on 9/27/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    
    if(self)
    {
        for (NSString *suit in [PlayingCard validSuits ]){
            for (NSUInteger rank=1; rank<= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addcard:card];
            }
        
        }
    }
    
    return self;
}

@end

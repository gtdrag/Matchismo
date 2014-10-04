//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by George Drag on 10/4/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

// this is the designated initializer
-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;

@property  (nonatomic, readonly)NSInteger score;

@end

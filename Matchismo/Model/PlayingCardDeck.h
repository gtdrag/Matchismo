//
//  PlayingCardDeck.h
//  Matchismo
//
//  Created by George Drag on 9/27/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface PlayingCardDeck : Deck

//It appears to have no public API, but it is going to override a method that Deck inherits from NSObject called init which will contain everything necessary to initialize a PlayingCardDeck

@end

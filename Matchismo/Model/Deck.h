//
//  Deck.h
//  Matchismo
//
//  Created by George Drag on 9/27/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addcard: (Card *)card atTop: (BOOL)atTop;
- (void)addcard: (Card *)card;

-(Card *)drawRandomCard;

@end

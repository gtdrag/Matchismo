//
//  PlayingCard.h
//  Matchismo
//
//  Created by George Drag on 9/27/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSString *color;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger *)maxRank;
@end

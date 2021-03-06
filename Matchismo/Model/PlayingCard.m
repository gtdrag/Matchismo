//
//  PlayingCard.m
//  Matchismo
//
//  Created by George Drag on 9/27/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    if([otherCards count] ==1){
        PlayingCard *otherCard = [otherCards firstObject];
        if([self.suit isEqualToString:otherCard.suit]){
            score = 1;
        }else if(self.rank == otherCard.rank){
            score = 4;
        }
        
    }
    
    
    return score;
    
}



// supporting the SuperClass's contents property (the declaration is inherited from the superclass)
- (NSString *) contents
{

    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
    
}

@synthesize suit = _suit;


+ (NSArray *)validSuits
{
    return @[@"♥︎",@"♠︎",@"♣︎",@"♦︎"];
}

- (void)setSuit:(NSString *)suit
{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}


- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

- (void)setColor:(NSString *)color
{
    if ([_suit  isEqual: @"♥︎"] || [_suit  isEqual: @"♦︎"])
        _color = @"r";
    else
        _color = @"b";
        
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger *)maxRank
{
    //warning thrown due to potential data loss on 64bit
    return [[self rankStrings] count]-1;
    
}

- (void)setRank:(NSUInteger)rank
{
    if(rank<=(int)[PlayingCard maxRank]){
        _rank = rank;
    }
}
@end

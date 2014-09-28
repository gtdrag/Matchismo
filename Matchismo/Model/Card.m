//
//  Card.m
//  Matchismo
//
//  Created by George Drag on 9/27/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import "Card.h"

@interface Card()


@end



@implementation Card

- (int)match:(NSArray *)otherCards {
    int score = 0;
    
    
    for(Card *card in otherCards){
        
        if([card.contents isEqualToString:self.contents]){
            score = 1;
            
        }
    }
    
    
    return score;
}








@end

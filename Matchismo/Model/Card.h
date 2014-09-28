//
//  Card.h
//  Matchismo
//
//  Created by George Drag on 9/27/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic)NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isChosen) BOOL matched;

- (int)match:(NSArray *)otherCards;


































@end
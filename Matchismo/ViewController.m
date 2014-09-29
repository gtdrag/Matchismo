//
//  ViewController.m
//  Matchismo
//
//  Created by George Drag on 9/27/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation ViewController

@synthesize deck = _deck;


- (Deck*)deck
{
    if(!_deck)
    {
        _deck = [[PlayingCardDeck alloc]init];
    }
    return _deck;
}


- (void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)TouchCardButton:(UIButton *)sender {
    
    
    if([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"card-back"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else {
        
        [sender setBackgroundImage:[UIImage imageNamed:@"card-front"]forState:UIControlStateNormal];
        
        NSMutableString *str = [NSMutableString stringWithString:[self.deck drawRandomCard].contents];
        NSString *color = [str substringFromIndex: [str length] - 1];
        
        [str deleteCharactersInRange:NSMakeRange([str length]-1, 1)];
        
        [sender setTitle:str forState:UIControlStateNormal];
        
        if([color isEqualToString:@"r"])
            [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        else
          [sender setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        
    }
    self.flipCount++;
    
}


@end

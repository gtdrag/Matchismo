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
        
        [sender setTitle:[self.deck drawRandomCard].contents forState:UIControlStateNormal];
        
       // NSLog(@"%@",[self.deck drawRandomCard].contents);
        
    }
    self.flipCount++;
    
}


@end

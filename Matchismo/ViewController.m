//
//  ViewController.m
//  Matchismo
//
//  Created by George Drag on 9/27/14.
//  Copyright (c) 2014 George Drag. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCard.h"
#import "CardMatchingGame.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) Deck *deck;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) CardMatchingGame *game;
@end

@implementation ViewController

@synthesize deck = _deck;

- (CardMatchingGame*)game
{
    if(!_game)
    {
        _game = [[CardMatchingGame alloc]initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    }
    return _game;
}


- (Deck*)createDeck
{
    return [[PlayingCardDeck alloc]init];

}

- (IBAction)TouchResetButton:(UIButton *)sender
{
    // reset all the cards and the score to defaults
    
}


- (IBAction)TouchCardButton:(UIButton *)sender
{

    int cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

-(void)updateUI
{
    for(UIButton *cardButton in self.cardButtons){
        int cardIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForcard:card] forState:UIControlStateNormal];
        [cardButton setTitleColor:[self colorForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)self.game.score ];
}

-(UIColor *) colorForCard:(PlayingCard *)card
{
    if([card.color isEqualToString:@"r"]){
        return [UIColor redColor];
    }else {
    return [UIColor blackColor];
    }
}

-(NSString *) titleForCard:(Card *)card
{
    return card.isChosen ? card.contents : @"";
}

-(UIImage *) backgroundImageForcard:(Card *)card
{
    NSString *image = @"";
    if(card.isChosen){
    image = @"card-front";
    }else{
    image = @"card-back";
    }
    return [UIImage imageNamed:image];
}

@end

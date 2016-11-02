//
//  GameController.m
//  Threelow
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "GameController.h"
#import "DSix.h"

@implementation GameController

-(instancetype)initWithDice:(NSInteger)num
{
    if(self = [super init])
    {
        _diceBag = [NSMutableArray new];
        for(NSInteger i = 0; i < num; i++)
        {
            DSix *newDi = [[DSix alloc]init];
            [_diceBag addObject:newDi];
        }
    }
    return self;
}

-(void)rollAllDice
{
    NSInteger score = -1;
    _rollScore = 0;
    for(DSix *d in self.diceBag)
    {
        score = [d diceRoll];
        
        if(score == 3)
        {
            score = 0;
        }
        if (score != -1){
            NSLog(@"%ld", score);
            _rollScore += score;
        }
    }
    NSLog(@"this roll's score is: %ld \n ------", self.rollScore);
    
}

-(void)holdDie:(NSInteger)hold
{
    for (NSInteger i = 0; i < hold; i++)
    {
        [[_diceBag objectAtIndex:i] toHoldSwitch];
    }
}

-(void)unHoldDie:(NSInteger)hold
{
    for (NSInteger i = 0; i < hold; i++)
    {
        [[_diceBag objectAtIndex:i] unHoldSwitch];
    }
}
-(void)resetAllHeld
{
    for(DSix *d in self.diceBag)
    {
        d.held = FALSE;
    }
}


@end

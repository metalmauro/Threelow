//
//  main.m
//  Threelow
//
//  Created by Matthew Mauro on 2016-11-02.
////  Copyright © 2016 Matthew Mauro. All rights reserved.
////
//The game we're going to make is called 'Threelow'. It's similar to Yahtzee, but with much simpler scoring. To play, a player rolls five dice. The goal is to get the lowest score possible. Each roll they must choose to hold at least one of the dice, but they can choose to hold as many as five dice. If they have un-held dice, they re-roll until all five dice are held.
//
//Threes are worth 0 points (hence the name of the game), every other roll is worth it's face value. Whoever has the lowest score after everyone has had a complete turn wins the game (note: gambling is illegal).

#import "DSix.h"
#import "GameController.h"
#import <Foundation/Foundation.h>
#import <stdio.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *GC = [[GameController alloc]initWithDice:5];
        
        while(TRUE)
        {
            char inputChars[255];
            
            NSLog(@"What would you like to do? \n 'roll' \n or 'quit'");
            fgets(inputChars, 255, stdin);
            strtok(inputChars, "\n");
            NSString *inputStr = [NSString stringWithUTF8String:inputChars];
            
            if ([inputStr isEqualToString:@"roll"])
            {
                NSLog(@"Are you holding any dice this roll? \n 'yes' or 'no'");
                char secondInp[255];
                fgets(secondInp, 255, stdin);
                strtok(secondInp, "\n");
                NSString *secInputStr = [NSString stringWithUTF8String:secondInp];
                if([secInputStr isEqualToString:@"yes"])
                {
                    int hold;
                    NSLog(@"How many to hold? (no higher than 5)");
                    scanf("%d", &hold);
                    [GC holdDie:hold];
                    [GC rollAllDice];
                }if([secInputStr isEqualToString:@"no"])
                {
                    [GC rollAllDice];
                }
            }if ([inputStr isEqualToString:@"quit"])
            {
                break;
            }
            
            //            [GC rollAllDice];
            //
            //            [GC holdDie:3];
            //            [GC rollAllDice];
            //            [GC unHoldDie:2];
            //            [GC rollAllDice];
            //            
            
        }
    }
    return 0;
}

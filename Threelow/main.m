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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *GC = [[GameController alloc]initWithDice:5];
        
        while(TRUE)
        {
            [GC rollAllDice];
            
            [GC holdDie:3];
            [GC rollAllDice];
        }
    }
    return 0;
}

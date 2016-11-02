//
//  main.m
//  Threelow
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#import "DSix.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DSix *die1 = [[DSix alloc]init];
        DSix *die2 = [[DSix alloc]init];
        DSix *die3 = [[DSix alloc]init];
        DSix *die4 = [[DSix alloc]init];
        DSix *die5 = [[DSix alloc]init];
        
        [die1 diceRoll];
        NSLog(@"%@", die1.rollResult);
        
        [die2 diceRoll];
        NSLog(@"%@", die2.rollResult);

        [die3 diceRoll];
        NSLog(@"%@", die3.rollResult);
        
        [die4 diceRoll];
        NSLog(@"%@", die4.rollResult);

        [die5 diceRoll];
        NSLog(@"%@", die5.rollResult);


    }
    return 0;
}

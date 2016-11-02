//
//  main.m
//  Threelow
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
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

//
//  DSix.m
//  Threelow
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#import <stdlib.h>
#import "DSix.h"

@implementation DSix

-(instancetype)init
{
    self = [super init];
    if (self) {
        _d6Values = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
        _held = FALSE;
    }
    return self;
}

-(void)toHoldSwitch
{
    if(self.held == FALSE){
        self.held = TRUE;
    }
}
-(void)unHoldSwitch
{
    if(self.held == TRUE){
        self.held = FALSE;
    }
}

-(NSInteger)diceRoll
{
    int scoring = -1;
    if (self.held == FALSE)
    {
        int rollD = arc4random_uniform(5);
        _rollResult = [self.d6Values objectAtIndex:rollD];
        NSLog(@"%@", self.rollResult);
        scoring = rollD+1;
    }
    return scoring;
}

@end

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

- (instancetype)init
{
    self = [super init];
    if (self) {
        _d6Values = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    }
    return self;
}

-(void)diceRoll
{
    int rollD = arc4random_uniform(5);
    _rollResult = [self.d6Values objectAtIndex:rollD];
}

@end

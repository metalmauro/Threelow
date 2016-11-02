//
//  DSix.h
//  Threelow
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#import <stdlib.h>
#import <Foundation/Foundation.h>

@interface DSix : NSObject

@property NSArray *d6Values;
@property NSString *rollResult;
@property BOOL held;

-(instancetype)init;
-(void)toHoldSwitch;
-(void)diceRoll;

@end

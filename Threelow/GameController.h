//
//  GameController.h
//  Threelow
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSMutableArray *diceBag;
@property NSMutableSet *heldDice;
@property NSInteger rollScore;

-(instancetype)initWithDice:(NSInteger)num;
-(void)holdDie:(NSInteger)hold;
-(void)rollAllDice;
-(void)resetAllHeld;
-(void)unHoldDie:(NSInteger)hold;
@end

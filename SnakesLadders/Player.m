//
//  Player.m
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = [[NSDictionary alloc] initWithObjectsAndKeys:
    [NSNumber numberWithInt:14],[NSNumber numberWithInt:4],
    [NSNumber numberWithInt:31],[NSNumber numberWithInt:9],
    [NSNumber numberWithInt:7],[NSNumber numberWithInt:17],
    [NSNumber numberWithInt:38],[NSNumber numberWithInt:20],
    [NSNumber numberWithInt:84],[NSNumber numberWithInt:28],
    [NSNumber numberWithInt:59],[NSNumber numberWithInt:40],
    [NSNumber numberWithInt:67],[NSNumber numberWithInt:51],
    [NSNumber numberWithInt:81],[NSNumber numberWithInt:63],
    [NSNumber numberWithInt:60],[NSNumber numberWithInt:64],
    [NSNumber numberWithInt:26],[NSNumber numberWithInt:89],
    [NSNumber numberWithInt:75],[NSNumber numberWithInt:95],
    [NSNumber numberWithInt:78],[NSNumber numberWithInt:99], nil];
    }
    return self;
}

-(void)Roll{
    
    NSNumber *changeToSquare;
    
    NSNumber *squareNum = [NSNumber numberWithUnsignedInt:arc4random_uniform(6) + 1];
    NSNumber *currentSquare = [NSNumber numberWithInteger:([self.currentSquare integerValue] + [squareNum integerValue])];
    
    [self printRollAndResult:squareNum andWith:currentSquare];
 
    self.currentSquare = currentSquare;

    for(NSNumber *square in self.gameLogic)
    {
        
        if([square isEqualToNumber:currentSquare])
        {
            //If the roll matches a key then set the currentSquare property to the associated value
            changeToSquare = [self.gameLogic objectForKey:square];
            
            if([currentSquare integerValue] < [changeToSquare integerValue])
            {
               NSLog(@"Staiware! Up you go");
               NSLog(@"You jumped from %ld to %ld", [self.currentSquare integerValue], [changeToSquare integerValue]);
               self.currentSquare = changeToSquare;
                
            } else
            {
              NSLog(@"Uh-oh a SNAKE! Down you go!: %ld", [self.currentSquare integerValue]);
              NSLog(@"You jumped from %ld to %ld", [self.currentSquare integerValue], [changeToSquare integerValue]);
              //If there is no match set currentSquare to the new rolled value.
              self.currentSquare = changeToSquare;
            }
        }
    }
}

-(void)printRollAndResult:(NSNumber *)squarenum andWith:(NSNumber *)currentsquare
{
  NSLog(@"You rolled a:  %ld", [squarenum integerValue]);
  NSLog(@"You landed on: %ld", [currentsquare integerValue]);
}

@end






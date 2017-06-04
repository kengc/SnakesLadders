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
    }
    return self;
}

-(void)Roll{
    NSNumber *squareNum = [NSNumber numberWithUnsignedInt:arc4random_uniform(6) + 1];
    self.currentSquare += [squareNum integerValue];
    NSLog(@"rand num is: %ld", (long)self.currentSquare);
}
@end

//
//  Player.m
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "Player.h"

@implementation Player


-(void)Roll{
    NSNumber *squareNum = [NSNumber numberWithUnsignedInt:arc4random_uniform(6) + 1];
    NSLog(@"rand num is: %@", squareNum);
}
@end

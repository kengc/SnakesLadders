//
//  Player.h
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary *gameLogic;

-(void)Roll;

@end

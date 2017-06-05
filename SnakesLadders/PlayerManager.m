//
//  PlayerManager.m
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)createPlayers:(NSInteger)num{
    //Fill out the implementation of the method by writing a for loop. Instantiate the number of players according to the passed in parameter value. Make sure you give each player a name like "player1", "player2", etc. As you create each player don't forget to add it to the players array.
    for(int i = 0; i < num; i++){
        NSString *temp;
        NSString *playerName = [temp stringByAppendingFormat:@"%d",i];
        Player *player = [[Player alloc] init];
        player.name = playerName;
        [self.players addObject:player];
    }
}

@end

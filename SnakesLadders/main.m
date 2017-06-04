//
//  main.m
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "InputManager.h"
#include "Player.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        [InputManager dispayInstructions];
        //only need to creat one player so outside of loop
        Player *player = [[Player alloc] init];
        BOOL gameOver = NO;
        
        do{
            NSString *userInput = [InputManager parseUserInput];
            if([userInput isEqualToString:@"r"]){
                gameOver = [player Roll];
                if(gameOver){
                    NSLog(@"Congrats you won Snakes & Ladders!");
                }
            }

        }while(!gameOver);
    }
    return 0;
}

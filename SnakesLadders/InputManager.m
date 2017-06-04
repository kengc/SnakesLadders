//
//  InputManager.m
//  SnakesLadders
//
//  Created by Kevin Cleathero on 2017-06-04.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "InputManager.h"

@implementation InputManager


+ (NSString *)parseUserInput{
    char inputChars[255];
    
    NSLog(@"(r)oll: ");
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
    
    NSString *lowered = [trimmed lowercaseString];
    
    return lowered;
}


+ (void)dispayInstructions{
    
    NSLog(@"Welcome to Snakes & Ladders \n ");
    NSLog(@"Type r to roll \n ");
}



@end

//
//  ScrambleGenerator.m
//  RubiksTimer
//
//  Created by Adam Morgan on 8/23/13.
//  Copyright (c) 2013 atom.morgan. All rights reserved.
//

#import "ScrambleGenerator.h"

@implementation ScrambleGenerator {
    NSString *scrambleText;
    NSArray *scramble;
}

//Constructor
- (id)init {
    self = [super init];
    
    //Instance variable
    scramble = @[
                 @"U",
                 @"U'",
                 @"F",
                 @"F'",
                 @"D",
                 @"D'",
                 @"R",
                 @"R'",
                 @"L",
                 @"L'",
                 @"B",
                 @"B'",
                 ];
    return self;
}

- (NSString *)getScramble {
    NSArray *scrambleString;
    //NSMutableArray *scrambleString;
    for (int x=0; x<20; x++){
        [scrambleString[x] addObject: scramble[arc4random() % scramble.count]];
    }
    scrambleText = [scrambleString componentsJoinedByString:@""];
    return scrambleText;
}

@end

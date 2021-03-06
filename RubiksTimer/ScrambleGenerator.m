//
//  ScrambleGenerator.m
//  RubiksTimer
//
//  Created by Adam Morgan on 8/23/13.
//  Copyright (c) 2013 atom.morgan. All rights reserved.
//

#import "ScrambleGenerator.h"

@implementation ScrambleGenerator {
    NSArray *scramble;
}

//Constructor
- (id)init {
    self = [super init];
    
    //Instance variable
    scramble = @[
                 @"U",
                 @"U'",
                 @"U2",
                 @"F",
                 @"F'",
                 @"F2",
                 @"D",
                 @"D'",
                 @"D2",
                 @"R",
                 @"R'",
                 @"R2",
                 @"L",
                 @"L'",
                 @"L2",
                 @"B",
                 @"B'",
                 @"B2",
                 ];
    return self;
}

- (NSString *)getScramble {
    NSArray *scrambleString;
    NSString *scrambleText;
    for (int x=0; x<20; x++){
        [scrambleString[x] addObject: scramble[arc4random() % scramble.count]];
    }
    scrambleText = [scrambleString componentsJoinedByString:@""];
    return scrambleText;
}

@end

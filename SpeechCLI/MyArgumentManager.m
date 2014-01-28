//
//  MyArgumentManager.m
//  SpeechCLI
//
//  Created by Juan A. Romero on 28/01/14.
//  Copyright (c) 2014 Juan A. Romero. All rights reserved.
//

#import "MyArgumentManager.h"

@implementation MyArgumentManager

@synthesize text;
@synthesize voice;
@synthesize path;
@synthesize volume;
@synthesize rate;
@synthesize pitch;
@synthesize modulation;

-(id)init {
    voice = @"Agnes";
    text = @"Dummy text!";
    volume = @1.0f;
    rate = @100.0f;
    pitch = @60.0f;
    modulation = @60.f;
    path = nil;
    return self;
}

-(int)argumentIndex:(NSString *)argName {
    return (int)[args indexOfObject:argName];
}

-(NSString *)argumentStringForIndex:(int)index {
    return [args objectAtIndex:index + 1];
}

-(void)processArguments:(NSArray *)argumentArray {
    args = [NSArray arrayWithArray:argumentArray];

    // look for speak string (last element)
    if ( [args count] < 2) {
        NSLog(@"Supply more arguments!");
    } else {
        text = [args objectAtIndex:[args count] - 1];
    };

    // look for voice (-v)
    int indexV = [self argumentIndex:@"-v"];
    if ( indexV > 0) {
        voice = [self argumentStringForIndex:indexV];
    };

    // look for output path (-o)
    int indexO = [self argumentIndex:@"-o"];
    if ( indexO > 0) {
        NSString *temp = [[self argumentStringForIndex:indexO] stringByExpandingTildeInPath];
        path = [NSURL fileURLWithPath:temp];
    };

    // look for volume (-a)
    int indexA = [self argumentIndex:@"-a"];
    if ( indexA > 0) {
        volume = [NSNumber numberWithFloat:[[self argumentStringForIndex:indexA] floatValue]];
    };
    
    // look for rate (-r)
    int indexR = [self argumentIndex:@"-r"];
    if ( indexR > 0) {
        rate = [NSNumber numberWithFloat:[[self argumentStringForIndex:indexR] floatValue]];
    };
    
    // look for pitch (-p)
    int indexP = [self argumentIndex:@"-p"];
    if ( indexP > 0) {
        pitch = [NSNumber numberWithFloat:[[self argumentStringForIndex:indexP] floatValue]];
    };
    
    // look for modulation (-m)
    int indexM = [self argumentIndex:@"-m"];
    if ( indexM > 0) {
        modulation = [NSNumber numberWithFloat:[[self argumentStringForIndex:indexM] floatValue]];
    };

}

-(void)printArguments {
    NSLog(@"------------------ARGUMENTS-------------------");
    NSLog(@"voice: %@", voice);
    NSLog(@"path: %@", path);
    NSLog(@"volume: %@", volume);
    NSLog(@"rate: %@", rate);
    NSLog(@"pitch: %@", pitch);
    NSLog(@"modulation: %@", modulation);
    NSLog(@"----------------------------------------------");
}

@end

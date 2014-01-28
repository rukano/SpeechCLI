//
//  MyArgumentManager.h
//  SpeechCLI
//
//  Created by Juan A. Romero on 28/01/14.
//  Copyright (c) 2014 Juan A. Romero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyArgumentManager : NSObject {
    NSArray *args;
    NSString *text;
    NSString *voice;
    NSURL *path;
    NSNumber *volume;
    NSNumber *rate;
    NSNumber *pitch;
    NSNumber *modulation;
}

@property NSString *text;
@property NSString *voice;
@property NSURL *path;
@property NSNumber *volume;
@property NSNumber *rate;
@property NSNumber *pitch;
@property NSNumber *modulation;

-(void)processArguments:(NSArray *)argumentArray;
-(void)printArguments;
-(int)argumentIndex:(NSString *)argName;
-(NSString *)argumentStringForIndex:(int)index;

@end

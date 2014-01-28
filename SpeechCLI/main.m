//
//  main.m
//  SpeechCLI
//
//  Created by Juan A. Romero on 28/01/14.
//  Copyright (c) 2014 Juan A. Romero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MySpeechManager.h"
#import "MyArgumentManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSLog(@"<<<--- Speech Command Line Tool --->>>");
        MyArgumentManager *args = [[MyArgumentManager alloc] init];
        [args processArguments:[[NSProcessInfo processInfo] arguments]];
//        [args printArguments];
        
        MySpeechManager *speech = [[MySpeechManager alloc] init];
        [speech setVoice:args.voice];
        [speech setVolume:args.volume];
        [speech setPitch:args.pitch];
        [speech setRate:args.rate];
        [speech setModulation:args.modulation];
        
        if ( args.path == nil ) {
            [speech speakText:args.text];
        } else {
            [speech renderText:args.text toFile:args.path];
        }
    }
    return 0;
}


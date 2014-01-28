//
//  MySpeechManager.h
//  SpeechCLI
//
//  Created by Juan A. Romero on 28/01/14.
//  Copyright (c) 2014 Juan A. Romero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface MySpeechManager : NSObject {
    NSSpeechSynthesizer *synth;
}

@property NSSpeechSynthesizer *synth;

-(void)speakText:(NSString *)text;
-(void)renderText:(NSString *)text toFile:(NSURL *)url;
-(void)initSynth;
-(void)setVoice:(NSString *)newVoice;
-(void)setVolume:(NSNumber *)newVolume;
-(void)setRate:(NSNumber *)newRate;
-(void)setPitch:(NSNumber *)newPitch;
-(void)setModulation:(NSNumber *)newModulation;

@end

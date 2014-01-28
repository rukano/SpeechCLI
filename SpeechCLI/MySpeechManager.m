//
//  MySpeechManager.m
//  SpeechCLI
//
//  Created by Juan A. Romero on 28/01/14.
//  Copyright (c) 2014 Juan A. Romero. All rights reserved.
//

#import "MySpeechManager.h"

@implementation MySpeechManager

@synthesize synth;

-(id)init {
    [self initSynth];
    return self;
}

-(void)initSynth {
    synth = [[NSSpeechSynthesizer alloc] initWithVoice:[NSSpeechSynthesizer availableVoices][0]];
    [self setVolume:@1.0f];
    [self setRate:@100.0f];
    [self setPitch:@60.0f];
    [self setModulation:@100.0f];
}

-(void)speakText:(NSString *)text {
    NSLog(@"Speaking Text: %@", text);
    [synth startSpeakingString:text];
    while ( synth.isSpeaking );
}

-(void)renderText:(NSString *)text toFile:(NSURL *)url {
    NSLog(@"Rendering Text: %@", text);
    [synth startSpeakingString:text toURL:url];
}

-(void)setVoice:(NSString *)newVoice {
    NSMutableString *identifier = [NSMutableString string];
    [identifier appendString:@"com.apple.speech.synthesis.voice."];
    [identifier appendString:newVoice];
    [synth setVoice:identifier];

    // TODO: look for available voices...
    // TODO: support other voices rather than apple

//    NSArray *voices = [NSSpeechSynthesizer availableVoices];
}
-(void)setVolume:(NSNumber *)newVolume {
    [synth setObject:newVolume
         forProperty:NSSpeechVolumeProperty
               error:nil];
}
-(void)setRate:(NSNumber *)newRate {
    [synth setObject:newRate
         forProperty:NSSpeechRateProperty
               error:nil];
}
-(void)setPitch:(NSNumber *)newPitch {
    [synth setObject:newPitch
         forProperty:NSSpeechPitchBaseProperty
               error:nil];
}
-(void)setModulation:(NSNumber *)newModulation {
    [synth setObject:newModulation
         forProperty:NSSpeechPitchModProperty
               error:nil];
}


@end

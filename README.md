SpeechCLI
=========

Speech Command Line Interface Tool.
The __say__ terminal command is fun and practical, but you can't change the pitch and rate of the voice, which produces some funny effects on the integrated Mac OS X Speech Synthesizer. This code was made to practice my Objective-C skills (which are none) and try to understad how the _NSSpeechSynthesizer_ works.

Usage
-----

After compiling, you can use the binary as:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./SpeechCLI [arguments] "text to speak"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I usually rename the binary to __say_better__ or __say2__ to keep a similar interface as the default __say__ command.

Arguments
---------

* __-v__ [string] VoiceName
* __-r__ [number] Rate in words per minute, from 0 to ... ???
* __-p__ [number] Pitch base note, from 0 to 127 (midi)
* __-m__ [number] Voice pitch modulation, from 0 to ???
* __-a__ [number] Volume from 0.0 to 1.0
* __-o__ [string] Output file path

If the __-o__ argument is missing, the text will be spoken live, otherwise it will be rendered to the provided output file.
The text to speak must be after the last argument.

### Default arguments ###

* Voice: Agnes
* Volume: 1.0
* Rate: 100.0
* Pitch: 60.0
* Modulation: 60.0
* OutputFile: nil

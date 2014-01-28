SpeechCLI
=========

Speech Command Line Interface Tool.

Usage
=====

After compiling, you can use the binary as:

./SpeechCLI [arguments] "text to speak"

Arguments
=========
* -v VoiceName (string)
* -r Rate in words per minute (number from 0 to ???)
* -p Pitch (number from 0 to 127)
* -m Modulation (number from 0 to ???)
* -a Volume (number from 0.0 to 1.0)
* -o Output file (string)
 
If the -o argument is missing, the text will be spoken live, otherwise it will be rendered to the provided output file.
The default arguments are: Voice->Agnes, Volume->1.0, Rate->100.0, Pitch->60.0, Modulation->60.0, OutputFile->nil.

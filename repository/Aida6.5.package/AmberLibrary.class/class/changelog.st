resources
changelog
^'16th January 2012 - Release 0.9.1
=================================

Here''s a summary of changes since the 0.9 release:

- 80 new unit tests written
- 52 issues fixed
- All classes in Kernel-Objects, Kernel-Classes and Kernel-Methods has been documented
- New documentation framework (see http://amber-lang.net/documentation.html)
- Better class organisations, "Kernel" package split into several packages
- First class packages have replaced class categories
- Internet Explorer 7+ compatibility
- New Announcement framework ported from Pharo
- New console-based REPL written in Amber using node.js
- Symbol class implemented together with object identity and #==
- New OrderedCollection and Set implementation
- Dictionary can now have any kind of object as keys. String-key dictionary has been renamed HashedCollection
- New TwitterWall example
- Improved HTML Canvas, now compatible with IE7
- Improved JSObjectProxy for seemless JavaScript objects access from Amber
- No more jQuery binding. Amber is fully capable of sending messages to JavaScript objects

13th September 2011 - Release 0.9
=================================
Amber has been evolving furiously since the presentation at ESUG 2011 in Edinburgh less than 3 weeks ago.

This is a summary:

Language, compiler and runtime

- New 100x faster parser built using PEGjs instead of the old parser built using PetitParser.
- New much faster ChunkParser implementation in handwritten Amber instead of using PetitParser.
- Improved parsing error report with quoted source code plus marker pinpointing parsing error.
- Removed PetitParser since it is no longer needed by Amber itself.
- Added compiler optimizations in the form of speculative inlining of specific messages and control structures.
- Added support for dynamic Arrays, just like in Squeak/Pharo.
- Added support for similar dynamic Dictionaries, not seen in other Smalltalks.
- Added & and | as allowed binary selectors and implemented them in Boolean.
- Added a Set implementation.
- Added first basic support for real Packages with dependency information.

...and various extensions, enhancements and bug fixes to the library classes.


Development environment

- A working Debugger with integrated inspector, proceed etc.
- A new structure with
- A working amberc command line compiler including a Makefile for recompiling the whole Amber.
- Enabled TestRunner in the IDE for running unit tests based on SUnit.
- Added "File in" button in Workspace to easily paste and filein source code in chunk format in the IDE.


Example code and ports

- Ported ProfStef interactive tutorial, available on Amber homepage but also in examples directory.
- Included the ESUG presentation as an example also in the examples directory.
- Several new examples running on Node.js and webOS included, all with Makefiles.
 
 
Various other things

- Issue tracker on github now used as primary source, closed a bunch of reported issues.
- Wiki pages on github with information on how to port code from other Smalltalks, lists of articles, tutorials, roadmap and more.

'
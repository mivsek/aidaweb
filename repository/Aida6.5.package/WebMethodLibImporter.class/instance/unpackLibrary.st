private-fetching
unpackLibrary
	| file result |
	file := SpFilename named: (SpFilename named: self tempDir) directoryContents first.
	file := SpFilename named: self tempDir, self separator, file asString. "absolute filename"
	(file extension notNil and: [file extension asLowercase = '.zip']) ifTrue:
		[result := self exec: 'cd ', self tempDir, '; unzip -o ', file asString.
		('Archive*' match: result) ifFalse: [self error: 'Error unpacking the library'].
		^file delete].
	file isDirectory ifFalse: 
		[self error: 'fetched library in unknown format'].
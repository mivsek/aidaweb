private-fetching
fetchLibrary: anUrlString
	| result |
	('file://*' match: anUrlString) ifTrue: [^self getLibraryFromFile: anUrlString].
	result := self exec: 'cd ', self tempDir, '; wget ', anUrlString.
	('*404: Not Found*' match: result) ifTrue: [self error: 'Library on internet not found'].
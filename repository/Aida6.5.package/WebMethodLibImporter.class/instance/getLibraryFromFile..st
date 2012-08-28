private-fetching
getLibraryFromFile: anUrlString
	"Unix specific"
	| fname result |
	fname := anUrlString copyReplaceAll: 'file://' with: ''.
	result := self exec: 'cd ', self tempDir, '; cp -r ', fname, ' .'.
	result isEmpty ifFalse: [self error: 'Library file copying error'].
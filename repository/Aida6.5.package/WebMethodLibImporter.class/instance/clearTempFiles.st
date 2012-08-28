private-temp files
clearTempFiles
	| result |
	result := self exec: 'rm -r ', self tempDir.
	result notEmpty ifTrue: [self error: 'Temp files delete failure'].
	self tempDir: nil.
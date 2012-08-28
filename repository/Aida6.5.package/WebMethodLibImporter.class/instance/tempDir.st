private-temp files
tempDir
	tempDir ifNil: [self setTempDir].
	^tempDir
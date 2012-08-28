settings
tempDirectory: aString
	" a directory for temporary files, usually ./temp. This directory is also created if not exist yet "
	| dir |
	self settings at: #tempDirectory put: aString.
	dir := SpFilename named: self tempDirectory.
	dir exists ifFalse: [dir makeDirectory].
	^self tempDirectory
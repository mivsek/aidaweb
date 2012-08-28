settings
tempDirectory
	" a directory for temporary files, usually ./temp. This directory is also created if not exist yet "
	^self settings  at: #tempDirectory ifAbsent: 
		[^self tempDirectory: self homeDirectory, 'temp']
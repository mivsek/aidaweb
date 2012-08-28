private-importing
importFromDirectory: anAbsoluteDirString
	| contents |
	(self shallBeExcluded: anAbsoluteDirString) ifTrue: [^nil].
	contents := (SpFilename named: anAbsoluteDirString) directoryContents.
	contents do: [:fname || absolutePath |
		absolutePath := anAbsoluteDirString, self separator, fname.
		(SpFilename named: absolutePath) isDirectory
			ifTrue:  [self importFromDirectory: absolutePath]
			ifFalse: [self importFromFile: absolutePath].
		].
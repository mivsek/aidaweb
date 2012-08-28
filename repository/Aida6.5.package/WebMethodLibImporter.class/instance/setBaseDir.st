private-importing
setBaseDir
	"a base or root directory to import from. If .zip contains content in directory, then we go in this dir as a base"
	| contents |
	contents := (SpFilename named: self tempDir) directoryContents.
	self baseDir: ((contents size = 1 
		and: [(SpFilename named: self tempDir, self separator, contents first) isDirectory])
			ifTrue: [self tempDir, self separator, contents first]
			ifFalse: [self tempDir])
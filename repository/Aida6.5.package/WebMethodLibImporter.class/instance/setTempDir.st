private-temp files
setTempDir
	| dir |
	dir := self tempPath, self separator, 'tempMethodLib', self random.
	self tempDir: (SpFilename named: dir) asAbsoluteFilename asString.
	(SpFilename named: dir) makeDirectory
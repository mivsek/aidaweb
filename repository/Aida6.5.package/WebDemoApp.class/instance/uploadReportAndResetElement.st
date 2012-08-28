views-upload
uploadReportAndResetElement
	"report if anything then delete file and reset variables"
	| e elapsed fileSize |
	e := WebElement new.
	self filename isEmpty ifTrue: [^e].
	elapsed := SpTimestamp now asSeconds - self startStamp asSeconds.
	fileSize := (SpFilename named: self filename) fileSize.
	e addText: 'uploaded file: ', self filename, ' size: ', fileSize printDotString, ' bytes in ', 
		elapsed printDotString, ' seconds (', ((fileSize/(elapsed max: 1)) rounded) printDotString, 'bytes/s)'.
	(SpFilename named: self filename) delete.
	self filename: ''. self fileStream: nil.
	^e
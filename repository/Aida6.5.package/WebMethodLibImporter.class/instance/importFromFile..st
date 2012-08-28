private-importing
importFromFile: anAbsoluteFilenameString
	"VW specific"
	| file methodName methodBody contentType |
	file := SpFilename named: anAbsoluteFilenameString.
	methodName := self methodForFilename: anAbsoluteFilenameString inDirectory: self baseDir.
	methodName := self checkCorrectDuplicate: methodName.
	contentType := (MIMEMap default typeForExtension: file extension).
	contentType isNil ifTrue: [contentType := 'text/plain'].
	(MIMEMap default isTextType: contentType)
		ifTrue:  "text file (could be UTF8) "
			[ | stream |
			[stream := (file underlyingFilename withEncoding: #'UTF_8') readStream.  "VW specific"
			methodBody := stream contents]
				ensure: [stream close].
			methodBody := methodBody copyReplaceAll: '''' with: ''''''. "replace ' with double '' for Smalltalk standards"
			methodBody class = ByteString 
				ifTrue: [methodBody := methodName asString, (String with: Character cr), '^''', methodBody, ''''.]
				ifFalse:  "obviously UTF8 encoded"
					[methodBody := AIDASite convert: methodBody toCodepage: #'UTF_8'.
					methodBody := methodName asString, (String with: Character cr), 
						(self asMethod: methodBody)] ]  "binary, as in case below"
		ifFalse: "binary file"
			[methodBody := file underlyingFilename contentsAsMethod. "VW specific"
			methodBody := methodName asString, (String with: Character cr), methodBody].
	self library class compile: methodBody classified: 'resources'.
	self map 
		at: (anAbsoluteFilenameString copyFrom: self baseDir size+1 to: anAbsoluteFilenameString size)
		put: (Array with: methodName with: contentType).
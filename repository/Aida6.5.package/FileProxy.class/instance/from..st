initialize-release
from: aString
	| file relFilename |
	self releaseContent. "if any from before"
	file := SpFilename named: aString. file exists ifFalse: [^nil].
	relFilename := (file asString copyReplaceAll: self site homeDirectory with: '').
	self filename: (relFilename isEmpty ifTrue: ['\'] ifFalse: [relFilename]).
	self refreshTimestamps.
	self aidaContentType: (self site mimeMap typeForExtension: file extension).
	self size: file fileSize.
	self aidaContentType = 'text/html' 
		ifTrue:
			[self content: file contentsOfEntireFile.
			self codepage: #utf8. "(self detectCodepage: self content)."
"			self content: (AIDASite convert: self content fromCodepage: self codepage). "
			self setSize
			"self prepareHTMLPage. self makeAbsoluteImgTags. self content: nil"]
		ifFalse: 
			[self isToBeCached ifTrue:  "otherwise we will stream directly"
				[| stream | 
				[stream := file readStream binary. self content: stream contents] ensure: [stream close] ] ]
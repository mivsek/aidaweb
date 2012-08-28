accessing
relativeUrl
	"from page Url, without host and query part"
	| stream relative ch |
	stream := self pageUrl readStream.
	stream upTo: $/; upTo: $/; upTo: $/ . "skip protocol and hostname"
	relative := WriteStream on: String new.
	[stream atEnd] whileFalse:   "up to query part or #, if any"
		[ch := stream next. 
		(ch = $? or: [ch = $#]) 
			ifTrue: [stream upToEnd]
			ifFalse: [relative nextPut: ch] ].
	^'/', relative contents
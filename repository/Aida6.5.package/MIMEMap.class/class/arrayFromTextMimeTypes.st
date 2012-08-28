accessing
arrayFromTextMimeTypes
	"MIMEMap arrayFromTextMimeTypes"
	| collection stream |
	collection:= OrderedCollection new.
	stream := ReadStream on: self textMimeTypes.
	[stream atEnd] whileFalse:
		[ | line word |
		line := (stream upTo: Character cr) readStream.
		word := line upToSeparator. word notEmpty ifTrue: [collection add: word] ].
	^collection
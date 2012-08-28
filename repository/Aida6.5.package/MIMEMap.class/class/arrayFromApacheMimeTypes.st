accessing
arrayFromApacheMimeTypes
	| collection stream |
	collection:= OrderedCollection new.
	stream := ReadStream on: self apacheMimeTypes.
	[stream atEnd] whileFalse:
		[ | col line word |
		col := OrderedCollection new.
		line := (stream upTo: Character cr) readStream.
		[line atEnd] whileFalse: [word := line upToSeparator. word notEmpty ifTrue: [col add: word] ].
		collection add: col].
	^collection

"MIMEMap arrayFromApacheMimeTypes"
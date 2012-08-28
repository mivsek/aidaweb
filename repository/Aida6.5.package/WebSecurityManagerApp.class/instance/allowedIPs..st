accessing
allowedIPs: aString
	"converted to string of addresses, each in new line, no comma needed"
	| col stream ipString |
	col := OrderedCollection new.
	stream := aString readStream.
	[stream atEnd] whileFalse:
		[ipString := (stream upTo: Character lf) trimBlanks.
		ipString notEmpty ifTrue: [col add: ipString] ].
	self observee allowedIPs: col
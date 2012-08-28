parsing
fromJSON: aString
	"get an event from JSON message"
	| dict |
	dict := WebJSON parse: aString.
	self 	event: (dict at: 'event') asSymbol. "event is mandatory"
	(dict at: 'id') notNil ifTrue: [self element: (dict at: 'id') asSymbol].
	(dict at: 'context') notNil ifTrue: [self context: (dict at: 'context') asInteger].
	self pageUrl: (AIDASite convertFromWebString: (dict at: 'pageUrl')). "also mandatory"
	(dict includesKey: 'value') ifTrue: [self value: (dict at: 'value')].
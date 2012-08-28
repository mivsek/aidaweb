private
streamHtmlTo: aStream for: aRequest on: aSession
	"make a header"
	self prepareToHtmlStreamingOn: aSession. 
	aStream nextPutAll: self ident.
	self insideSpanTag ifTrue: 
		[aStream nextPutAll: '<span'. self streamAttributesTo: aStream for: aSession. aStream nextPutAll: '>'].
	self header notNil ifTrue: [aStream nextPutAll: '<h', self header printString, '>'].
	"font size, color, face"
	(self size notNil | self font notNil ) ifTrue:
		[aStream nextPutAll: '<font '.
		self size notNil ifTrue:
			[aStream nextPutAll: 'size=', (self size > 0 ifTrue: ['+'] ifFalse: ['']), self size printString, ' '].
		self font notNil ifTrue:	[aStream nextPutAll: 'face=', self font, ' '].
		aStream nextPutAll: '> ' ].
	"set text attributes, if any"
	self textAttributes notNil ifTrue: 
		[self textAttributes do: [:attribute |  aStream nextPutAll: 
			'<', attribute asString, '>']].
	"print a text"
	self text notNil ifTrue: [aStream nextPutAll: 
		(AIDASite convertToWeb: 
			(self isMultilingual ifTrue: [self textFromMultilang: self text on: aSession] ifFalse: [self text]) 
			on: aSession)].
	"print composite elements"
	super streamHtmlTo: aStream for: aRequest on: aSession.
	"reset text attributes"
	self textAttributes notNil ifTrue: 
		[self textAttributes do: [:attribute |  aStream nextPutAll: 
			'</', attribute asString, '>']].
	"end of font adjustment"
	(self size notNil | self font notNil ) ifTrue: [aStream nextPutAll: '</font>'].
	self header notNil ifTrue: [aStream nextPutAll: '</h', self header printString, '>', self eol].
	self insideSpanTag ifTrue: [aStream nextPutAll: '</span>', self eol].
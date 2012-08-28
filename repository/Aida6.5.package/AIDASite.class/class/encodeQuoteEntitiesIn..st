http encoding
encodeQuoteEntitiesIn: aString
	" Just double quotes '' to &quot;  "
	"Character entitty references,  see http://www.w3.org/TR/html401/charset.html#h-5.3.2"
	| in out |
	(aString contains: [:ch | ch = $" ]) ifFalse: [^aString]. "quick test"
	in := aString readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[| ch | ch := in next.
		ch = $"
			ifTrue: [out nextPutAll: '&quot;']
			ifFalse: [out nextPut: ch]  ].
	^out contents
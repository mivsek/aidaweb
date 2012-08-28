http encoding
decodeCharEntitiesIn: aString
	"  '&lt;tag&gt; = '<tag>'  "
	"Character entitty references, see http://www.w3.org/TR/html401/charset.html#h-5.3.2"
	| charDict in out |
	charDict := Dictionary new
		at: 'lt' put: $<; at: 'gt' put: $>;
		at: 'amp' put: $&; at: 'quot' put: $"; yourself.
	in := aString readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[| ch entity | 
		ch := in next.
		ch = $& 
			ifTrue: 
				[entity := in upTo: $; .
				out nextPut: (charDict at: entity)]
			ifFalse: [out nextPut: ch]  ].
	^out contents
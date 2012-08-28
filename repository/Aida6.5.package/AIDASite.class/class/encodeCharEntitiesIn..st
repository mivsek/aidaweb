http encoding
encodeCharEntitiesIn: aString
	"  '<tag>' = '&lt;tag&gt;' "
	"Character entitty references,  see http://www.w3.org/TR/html401/charset.html#h-5.3.2"
	| charEntities charDict in out |
	charEntities := #($< $> $& $").
	(aString contains: [:ch | charEntities includes: ch ]) ifFalse: [^aString]. "quick test"
	charDict := Dictionary new
		at: $< put: '&lt;'; at: $> put: '&gt;';
		at: $& put: '&amp;'; at: $" put: '&quot;'; yourself.
	in := aString readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[| ch | ch := in next.
		(charEntities includes: ch)
			ifTrue: [out nextPutAll: (charDict at: ch)]
			ifFalse: [out nextPut: ch]  ].
	^out contents
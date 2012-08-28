private
sanitizeTagFrom: aStream
	"sanitize tag by just skipping 'script' if found "
	| out inx|
	out := WriteStream on: String new.
	[aStream atEnd or: [aStream peek = $> ]] whileFalse:
		[out nextPut: aStream next.
		aStream peek = $< ifTrue: [out nextPutAll: (self sanitizeTagFrom: aStream)]]. "deal with tags within tags"
	aStream peek = $> ifTrue: [out nextPut: aStream next].
	^('*script*' match: out contents)
		ifTrue: 
			[inx := out contents asLowercase indexOfSubCollection: 'script' startingAt: 1.
			(out contents copyFrom: 1 to: inx-1), (out contents copyFrom: inx+6 to: out contents size)]
		ifFalse: [out contents].
adding text
addText: aStringOrAssociation header: aNumber
	aStringOrAssociation isNil ifTrue: [^nil].
	^self add: ((WebText text: aStringOrAssociation) header: aNumber)
adding text
addText: aStringOrAssociation "multilang"
	aStringOrAssociation isNil ifTrue: [^nil].
	^self add: (WebText text: aStringOrAssociation)
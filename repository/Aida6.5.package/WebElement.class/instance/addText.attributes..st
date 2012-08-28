adding text
addText: aStringOrAssociation attributes:  aSymbolArray
	aStringOrAssociation isNil ifTrue: [^nil].
	^self add: ((WebText text: aStringOrAssociation) textAttributes: aSymbolArray)
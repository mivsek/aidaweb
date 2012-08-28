accessing-tags
linkTagIndexes
	"indexes of elements, which represent link tags in original html file"
	linkTagIndexes isNil ifTrue: [self clearLinkTagIndexes].
	^linkTagIndexes
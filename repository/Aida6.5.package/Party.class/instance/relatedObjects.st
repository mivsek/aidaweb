accessing
relatedObjects
	relatedObjects isNil ifTrue: [self initRelatedObjects].
	^relatedObjects
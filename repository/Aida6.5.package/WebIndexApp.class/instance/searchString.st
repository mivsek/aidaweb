accessing
searchString
	searchString isNil ifTrue: [self searchString: ''].
	^searchString
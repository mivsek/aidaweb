private
mimeTypes
	mimeTypes isNil ifTrue: [self initMimeTypes].
	^mimeTypes
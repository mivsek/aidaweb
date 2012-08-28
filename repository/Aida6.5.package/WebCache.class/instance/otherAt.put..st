private
otherAt: aSymbol put: anObject
	self other isNil ifTrue: [self initOther].
	^self other at: aSymbol put: anObject
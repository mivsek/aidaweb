private
otherAt: aString put: anObject
	self other isNil ifTrue: [self initOtherValues].
	^self other at: aString put: anObject
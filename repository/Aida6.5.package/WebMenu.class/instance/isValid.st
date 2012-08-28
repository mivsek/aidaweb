validation
isValid
	self adaptorToStore isNil ifTrue: [^true].
	^self adaptorToStore isValid
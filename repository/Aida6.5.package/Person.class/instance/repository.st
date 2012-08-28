accessing
repository
	self organizationUnit notNil ifTrue: [^self organizationUnit repository].
	^self company notNil ifTrue: [self company repository] ifFalse: [nil].
roles - specific
jobParentRole
	self jobRole isNil ifTrue: [^nil].
	^self jobRole parentRole.
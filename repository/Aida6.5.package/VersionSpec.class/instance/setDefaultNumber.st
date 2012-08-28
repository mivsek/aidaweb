initalize-release
setDefaultNumber
	self isOldest 
		ifTrue: [self number: '1'] 
		ifFalse: [self setIncrementedNumberFromParent]
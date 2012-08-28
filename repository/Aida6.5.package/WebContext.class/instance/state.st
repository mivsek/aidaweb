private-states
state
	" #noprocess #idle #executing #interrupted "
	state isNil ifTrue: [self setNoProcessState].
	^state
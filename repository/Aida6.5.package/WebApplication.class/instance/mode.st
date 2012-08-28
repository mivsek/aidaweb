accessing-modes
mode
	| mode |
	mode := self otherAt: #Mode.
	^mode isNil 
		ifTrue: [self setViewMode. self mode] 
		ifFalse: [mode]
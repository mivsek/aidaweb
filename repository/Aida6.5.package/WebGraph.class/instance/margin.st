accessing
margin
	margin isNil ifTrue: [self margin: (self marginFor: (self getMax at: 1))].
	^margin
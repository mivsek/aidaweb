private
columns
	columns isNil ifTrue: [self initColumns].
	^columns
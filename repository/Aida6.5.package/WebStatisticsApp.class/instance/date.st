accessing
date
	date isNil ifTrue: [date := SpDate today].
	^date
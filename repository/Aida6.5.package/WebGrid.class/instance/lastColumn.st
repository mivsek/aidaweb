private
lastColumn
	^self columns notEmpty ifTrue: [self columns last] ifFalse: [nil].
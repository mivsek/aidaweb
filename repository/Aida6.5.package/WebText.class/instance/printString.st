private
printString

	^'''', [self text isNil ifTrue: [''] ifFalse: [self text] ] value,''''
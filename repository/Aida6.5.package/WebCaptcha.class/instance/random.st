converting
random
	random isNil ifTrue: 
		[random := (AIDASite random next * 1000) truncated printString].
	^random

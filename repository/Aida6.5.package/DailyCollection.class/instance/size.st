accessing
size
	days isNil ifTrue: [^0].
	^self days values inject: 0 into: [:sum :each | sum + each size].
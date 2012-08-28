private
randomGen
	randomGen isNil ifTrue: [self randomGen: Random new].
	^randomGen
private-accessing
viewBlock
	viewBlock isNil ifTrue: [self viewBlock: self defaultViewBlock].
	^viewBlock
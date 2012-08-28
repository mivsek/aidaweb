accessing
graphics
	graphics isNil ifTrue: [self initGraphics].
	^graphics
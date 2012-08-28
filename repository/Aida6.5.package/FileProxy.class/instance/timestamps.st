private
timestamps
	timestamps isNil ifTrue: [self timestamps: Dictionary new.].
	^timestamps
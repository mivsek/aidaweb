private
day
	day isNil ifTrue: [self day: Date today dayOfYear].
	^day
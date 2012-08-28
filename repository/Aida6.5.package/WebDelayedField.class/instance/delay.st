accessing
delay
	"delay before posting, in seconds"
	delay isNil ifTrue: [self delay: self defaultDelay].
	^delay
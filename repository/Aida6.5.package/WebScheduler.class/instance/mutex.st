private
mutex
	"for protecting critical sections"
	mutex isNil ifTrue: [self initMutex].
	^mutex
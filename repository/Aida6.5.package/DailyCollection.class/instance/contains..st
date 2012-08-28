testing
contains: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Answer true if aBlock ever evaluates to true, otherwise answer false."

	self detect: aBlock ifNone: [^false].
	^true
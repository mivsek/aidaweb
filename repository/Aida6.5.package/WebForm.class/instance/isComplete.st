validation
isComplete
	"all required fields entered and all all fields valid"
	^self isEntered and: [self isValid]
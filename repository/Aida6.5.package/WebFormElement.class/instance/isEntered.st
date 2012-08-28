validation
isEntered
	"this input field is required and not empty. If not required it is entered even if empty"
	self isRequired ifFalse: [^true].
	^self adaptor changed
		ifTrue: [self adaptor isEmpty not] "changed value"
		ifFalse: [self isEmpty not] "old value"
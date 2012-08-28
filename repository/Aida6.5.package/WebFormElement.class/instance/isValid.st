validation
isValid
	"form element (field) has a valid value"
	self adaptor isNil ifTrue: [^true].
	^self adaptor isValid
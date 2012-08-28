saving
save
	"save the value to the domain model. Save only if validated, othewise raise an exception"
	self changed ifFalse: [^nil].
	self isValid ifFalse: [self error: 'value validation failed!'].
	self saveValue: self buffer.
	self resetChanged.
	self buffer: nil
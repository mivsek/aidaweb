accessing
changed
	"is value changed?"
	changed ifNil: [self resetChanged].
	^changed
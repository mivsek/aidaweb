accessing
allow
	"is edit allowed at all?"
	allow isNil ifTrue: [^true].
	^allow
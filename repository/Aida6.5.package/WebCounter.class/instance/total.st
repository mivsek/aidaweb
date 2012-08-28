accessing
total
	"total number of visits, registered by this counter"

	total isNil ifTrue: [self initTotal].
	^total.
private-ids
ids
	"dictionary of elements which have id defined, for fast access to them from AJAX requests"
	ids isNil ifTrue: [self initIds].
	^ids
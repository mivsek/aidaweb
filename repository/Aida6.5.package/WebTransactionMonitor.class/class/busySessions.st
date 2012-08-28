accessing
busySessions

	"a collection of database sessions, which are busy on that moment"

	BusySessions isNil ifTrue: [self initBusySessions].
	^BusySessions
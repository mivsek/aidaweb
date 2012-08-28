testing-identity swap
testSwapIdentity
	| o1 o2 |
	o1 := VersionedExample new. o1 title: 'first'.
	o2 := o1 asNewVersion. o2 title: 'second'.
	self assert: o1 isCurrentVersion.
	self assert: o1 title = 'first'. self assert: o2 title = 'second'.
	o2 setCurrentVersion.
	self assert: o1 isCurrentVersion. "because of identity swap! "
	self assert: o1 title = 'second'. self assert: o2 title = 'first'.
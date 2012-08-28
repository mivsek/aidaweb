testing-identity swap
testSwapIdentity4
	| o1 o2 |
	o1 := VersionedExample new. o1 title: 'first'.
	o2 := o1 asNewVersion. o2 title: 'second'. 
	o2 setCurrentVersion.  "to test other part of VersionedObject swapIdentity"
	self assert: o1 version object == o1. "check references to spec and back"
	self assert: o2 version object == o2.
	self assert: o1 version parent == o2. "test chain integrity"
	self assert: o2 version next == o1.
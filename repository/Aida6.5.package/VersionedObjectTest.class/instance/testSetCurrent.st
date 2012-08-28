testing-identity swap
testSetCurrent
	| o1 o2 |
	o1 := VersionedObject new. o2 := o1 asNewVersion.
	self assert:  o1 isCurrentVersion.
	self deny:  o2 isCurrentVersion.
	o2 setCurrentVersion.
	self assert:  o1 isCurrentVersion. "o1 and o2 identities are swapped! "
	self deny:  o2 isCurrentVersion.
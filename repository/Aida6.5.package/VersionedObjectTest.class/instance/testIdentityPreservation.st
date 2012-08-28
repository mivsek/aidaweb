testing-identity swap
testIdentityPreservation
	| o1 o2 c |
	o1 := VersionedExample new. o1 title: 'test'.
	o2 := o1 asNewVersion.  o2 title: 'sectest'.
	c := o1 currentVersion.
	self assert: c == o1.
	o2 setCurrentVersion.
	self assert: c == o1 currentVersion. "identity must be preserved! "
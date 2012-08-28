testing-identity swap
testSwapIdentity2
	| o1 o2 s1 s2 |
	o1 := VersionedExample new. o1 title: 'first'.
	o2 := o1 asNewVersion. o2 title: 'second'.
	s1 := o1 version. s2 := o2 version.
	self assert: s1 object title = 'first'. self assert: s2 object title = 'second'.
	o2 setCurrentVersion.
	"version chain order must be preserved!"
	self assert: s1 object title = 'first'. self assert: s2 object title = 'second'.
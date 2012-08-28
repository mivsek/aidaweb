testing-identity swap
testSwap3Objects2
	| o1 o2 o3 |
	o1 := VersionedExample new. o1 title: 'first'. o2 := o1 asNewVersion. o2 title: 'second'. 
	o3 := o2 asNewVersion. o3 title: 'third'. 
	self assert: o1 version next == o2. 
	self assert: o2 version parent == o1. self assert: o2 version next == o3.
	self assert: o3 version parent == o2.
	o3 setCurrentVersion.
	self assert: o3 version next == o2. "test chain integrity"
	self assert: o2 version parent == o3. self assert: o2 version next == o1.
	self assert: o1 version parent == o2.
	self assert: o1 title = 'third'. self assert: o2 title = 'second'. self assert: o3 title = 'first'.
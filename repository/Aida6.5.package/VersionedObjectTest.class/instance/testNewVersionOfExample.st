testing
testNewVersionOfExample
	| o o2 |
	o := VersionedExample new. o title: 'test'; body: 'this is test'.
	o2 := o asNewVersion.
	self assert: o2 title = o title.
	self assert: o2 body = o body.
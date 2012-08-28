testing
testVersionIncrement
	| o o2 |
	o := VersionedObject new. o versionNumber: '1234'.
	o2 := o asNewVersion.
	self assert: o2 versionNumber = '1235'.
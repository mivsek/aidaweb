testing
testSearchByNumber
	| o spec |
	o := VersionedObject new.
	spec := VersionSpec newFromParent: o for: VersionedObject new.
	self assert: ((spec versionSpecWithNumber: '2') number = '2').
	self assert: ((spec versionSpecWithNumber: '1') number = '1').
	self assert: (spec versionSpecWithNumber: '3') isNil.
testing
testSearchByNumber
	| o1 o2 o3 |
	o1 := VersionedExample new. o1 title: 'first'. o2 := o1 asNewVersion. o2 title: 'second'. 
	o3 := o2 asNewVersion. o3 title: 'third'. 
	self assert: ((o2 versionWithNumber: '1') versionNumber = '1').
	self assert: ((o2 versionWithNumber: '2') versionNumber = '2').
	self assert: ((o2 versionWithNumber: '3') versionNumber = '3').
	self assert: ((o2 versionWithNumber: '4') isNil).
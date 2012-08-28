testing
testFirstCreation
	| o |
	o := VersionedObject new.
	self assert: o versionNumber = '1'.
	self assert:  o isCurrentVersion.
	self assert:  o isOldestVersion.
	self assert:  o isNewestVersion.
	self assert:  o parentVersion isNil.
	self assert:  o nextVersion isNil.
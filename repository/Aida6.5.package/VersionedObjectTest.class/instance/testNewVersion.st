testing
testNewVersion
	| o o2 |
	o := VersionedObject new.
	o2 := o asNewVersion.
	self assert: o2 versionNumber = '2'.
	self deny:  o2 isCurrentVersion.
	self deny:  o2 isOldestVersion.
	self assert:  o2 isNewestVersion.
	self assert: o2 parentVersion == o.
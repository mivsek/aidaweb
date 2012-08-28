testing-versions
testVersionedObject
"	| o1 o2 |
	o1 := VersionedExample new. o2 := o1 asNewVersion.
	app := o1 webAppFor: session.
	self assert: app observee isVersionedObject.
	self assert: app observee isCurrentVersion.
"
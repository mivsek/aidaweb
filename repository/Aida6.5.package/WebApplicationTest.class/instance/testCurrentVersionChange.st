testing-versions
testCurrentVersionChange
"	| o1 o2 |
	o1 := VersionedExample new. o2 := o1 asNewVersion.
	app := o1 webAppFor: session.
	self assert: app observee isCurrentVersion.
	self assert: app observee versionNumber = '1'.
	o2 setCurrentVersion.
	self assert: app observee isCurrentVersion. ""because of identity change! ""
	self assert: app observee versionNumber = '2'.
"
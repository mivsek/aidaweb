testing-versions
testChangeObserveeVersion
"	| o1 |
	o1 := VersionedExample new. o1 asNewVersion.
	app := o1 webAppFor: session.
	self assert: app observee versionNumber = '1'.
	request uri queries: (request uri queries, '&version=2').
	app checkObserveeVersion.
	self assert: app observee versionNumber = '2'.
	self deny: app observee isCurrentVersion
"
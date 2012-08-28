testing-versions
testChangeObserveeVersionBack
"	| o1 |
	o1 := VersionedExample new. o1 asNewVersion.  app := o1 webAppFor: session.
	request uri queries: (request uri queries, '&version=2').
	app checkObserveeVersion.
	self assert: app observee versionNumber = '2'.
	self setRequest. ""to be without version again""
	app checkObserveeVersion.
	self assert: app observee versionNumber = '1'.
	self assert: app observee isCurrentVersion
"
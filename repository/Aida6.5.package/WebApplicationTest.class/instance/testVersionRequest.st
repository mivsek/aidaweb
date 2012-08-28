testing-versions
testVersionRequest
"	| o1 |
	o1 := VersionedExample new. 
	app := o1 webAppFor: session.
	self deny: app isVersionRequest.
	self assert: app versionFromRequest isNil.
	request uri queries: (request uri queries, '&version=2').
	self assert: app isVersionRequest.
	self assert: app versionFromRequest = '2'.
"
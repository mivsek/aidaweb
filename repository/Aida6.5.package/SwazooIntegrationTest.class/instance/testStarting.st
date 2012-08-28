testing
testStarting
"	server startSite: self siteName.
	self assert: (server siteNamed: self siteName) isServing.
	self assert: (server servers asOrderedCollection first isServing).
	server stopSite: self siteName.
	self deny: (server siteNamed: self siteName) isServing.
"
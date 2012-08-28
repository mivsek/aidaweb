testing
testAccessingByName
"
	self assert: (Swazoo.SwazooServer siteNamed: self siteName) notNil.
	self assert: (Swazoo.SwazooServer siteHostnamed: self siteHost) notNil
"
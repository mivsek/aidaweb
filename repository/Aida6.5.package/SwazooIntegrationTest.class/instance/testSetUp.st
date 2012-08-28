testing
testSetUp
"
	self assert: (server sites size = 1).
	self assert: (site ip = self siteIP).
	self assert: (site host = self siteHost).
	self assert: (site port = self sitePort).
	self assert: site isServing not.
"
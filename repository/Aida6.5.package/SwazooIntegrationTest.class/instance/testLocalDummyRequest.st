testing
testLocalDummyRequest
"
	| response |
	server startSite: self siteName.
	response := self localSendUrl: '/dummycompletelydummy.html'.
	self assert: response isNotFound.
	server stopSite: self siteName.
"
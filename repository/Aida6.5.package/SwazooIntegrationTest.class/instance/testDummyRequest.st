testing
testDummyRequest
"
	server startSite: self siteName.
	self should: [self sendUrl: '/dummycompletelydummy.html'] raise: Net.HttpObjectNotFound.
	server stopSite: self siteName.
"
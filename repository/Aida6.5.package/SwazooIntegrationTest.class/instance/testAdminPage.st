testing
testAdminPage
"
	| |
	server startSite: self siteName.
	self shouldnt: [self sendUrl: '/admin.html'] raise: Error.
	self shouldnt: [self sendUrl: '/admin.html?view=login'] raise: Error.
	server stopSite: self siteName.
"
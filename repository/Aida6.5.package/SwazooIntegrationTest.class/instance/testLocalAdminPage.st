testing
testLocalAdminPage
"
	| response |
	server startSite: self siteName.
	response := self localSendUrl: '/admin.html'.
	self assert: response isRedirectLink.
	response := self localSendUrl: '/admin.html?view=login'.
	self assert: response isOk.
	server stopSite: self siteName.
"
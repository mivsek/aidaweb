running
tearDown
"	site := server siteNamed: 'test'.
	site stop.
	server removeSite: site.
	server := nil. site := nil. session := nil.
"
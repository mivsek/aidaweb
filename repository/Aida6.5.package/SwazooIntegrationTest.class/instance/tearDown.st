running
tearDown
	"site := server siteNamed: self siteName.
	site stop.
	server removeSite: site.
	server := nil.
	site := nil."
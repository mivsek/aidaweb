ensure
ensureUI
	"ensure jQuery UI resources in page header"
	| page |
	self ensure. "base jQuery always needed"
	page := self context page.
	self ensure: '/js/jquery-ui-1.8.21.custom.min.js' onPage: page.  "update those Urls after each library update!"
	self ensure: '/css/ui/jquery-ui-1.8.21.custom.css' onPage: page.
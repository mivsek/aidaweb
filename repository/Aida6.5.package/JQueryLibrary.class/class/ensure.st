ensure
ensure
	"ensure base jQuery resources in page header"
	| page |
	page := self context page.
	self ensure: '/js/jquery-1.7.2.min.js' onPage: page.  "update those Urls after each library update!"
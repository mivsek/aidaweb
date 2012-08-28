ensure
ensure
	"ensure TinyMCE resources in page header"
	| page |
	page := self context page.
	self ensure: '/jscripts/tiny_mce/tiny_mce.js' onPage: page.
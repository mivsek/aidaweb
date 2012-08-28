ensure
ensureInHeader
	"ensure proper headers in web page to load this library. Sublclasses should override or add proper 
	ensure methods according to example here:"
	| page |
	page := self context page.  "current page we are building"
	self ensure: '/jquery.mobile-1.1.1.css' onPage: page.  "relative Urls here, wthout baseUrl!"
	self ensure: '/jquery.mobile-1.1.1.js' onPage: page.
ensure
ensureScriptaculous
	"ensure Scriptaculous (including Prototype.js) resources in page header"
	| page |
	page := self context page.
	self ensure: '/lib/prototype.js' onPage: page.
	self ensure: '/src/scriptaculous.js' onPage: page.	"will load all librares"
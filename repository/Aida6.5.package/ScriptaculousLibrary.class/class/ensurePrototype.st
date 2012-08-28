ensure
ensurePrototype
	"ensure Prototype.js resource in page header"
	| page |
	page := self context page.
	self ensure: '/lib/prototype.js' onPage: page.
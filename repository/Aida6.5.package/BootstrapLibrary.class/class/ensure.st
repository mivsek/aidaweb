ensure
ensure
	"ensure Bootstrap resources in page header"
	"Just CSS for now!"
	| page |
	page := self context page.
	self ensure: '/bootstrap/css/bootstrap.css' onPage: page.
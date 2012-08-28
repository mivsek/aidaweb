private-obsolete
ask: aWebElement
	"ask for something, like delete confirmation dialog. Stop execution here until the result is returned. Return 
	that result. See WebDemoApp control flow for examples"
	self show: aWebElement.
	^self context answer
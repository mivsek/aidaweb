attributes
id: aSymbol
	"set a unique id of that element on a page. Used in javascript, urls, style sheets"
	"duplicate ids not allowed, error is raised!"
	| ctx |
	ctx := self context.
	self id notNil ifTrue: "unregister old id"
		[(ctx isRegistered: self) ifTrue: 
			[ctx removeId: self id]].
	self basicId: aSymbol asSymbol.
	(self class = WebElement and: [self hasTag not]) ifTrue: [self setDiv]. "element with id must be at least div"
	ctx registerIdFor: self.
executing
createNewContext
	"create and add as a child to receiver, also to the app"
	| ctx |
	ctx := WebContext newOn: self.
	self child: ctx.
	self app addContext: ctx.
	^ctx
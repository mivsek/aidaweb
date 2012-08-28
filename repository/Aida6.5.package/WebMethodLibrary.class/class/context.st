ensure
context
	"find the web execution context on which a webpage is built"
	| ctx |
	ctx := self firstContextFromStack.
	ctx ifNil: [self error: 'ensure methods must be called while building the web page!'].
	^ctx
accessing
context
	"return a web execution context on which we are composing a web page"
	self creationContext notNil ifTrue: 	[^self creationContext].
	^self parent notNil 
		ifTrue: [self parent context] "web window/page knows the best"
		ifFalse: [	self firstContextFromStack] "slow! "
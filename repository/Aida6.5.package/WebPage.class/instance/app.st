accessing
app
	"return anApplication on which we are composing this web page"
	^self parent notNil 
		ifTrue: [self parent "context" app]
		ifFalse: [self firstContextFromStack app]
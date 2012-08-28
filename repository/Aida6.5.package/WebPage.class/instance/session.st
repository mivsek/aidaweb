accessing
session
	"return a session on which we are composing this web page"
	^self parent notNil 
		ifTrue: [self parent "context" session]
		ifFalse: [self firstSessionFromStack]
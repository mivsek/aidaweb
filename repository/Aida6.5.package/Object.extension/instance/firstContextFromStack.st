*Aida
firstContextFromStack
	"try to find a first web execution context"
	"have we something faster?"
	| stContext request event |
	"Squeak specific! "
	stContext := thisContext sender.
	[stContext notNil] whileTrue: [
		(stContext receiver isKindOf: WebContext) ifTrue:
			[^stContext receiver].
		(stContext receiver isKindOf: WebElement) ifTrue: 
			[stContext selector = #update ifTrue: 
				[^stContext receiver creationContext] ].  "a context of element to be updated, 
									  not necessary currenlty excecuting context!"
		stContext := stContext sender].
	event := self firstEventFromStack.
	event notNil ifTrue: [^event context].
	request := self firstRequestFromStack.
	^request notNil ifTrue: [request context] ifFalse: [nil]
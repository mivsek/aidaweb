view, action methods
actionMethodForView: aViewSymbol button: aButton
	"if no method for that button name, return nil"
	| method viewSymbol |
	viewSymbol := aViewSymbol asString isEmpty 
		ifTrue: [self defaultView] ifFalse: [aViewSymbol asSymbol].
	method := self composedActionMethodNameForView: viewSymbol action: aButton action.
	(self canUnderstand: method) ifTrue: [^method].
	'search' = aButton action ifTrue: [^#actionSearch].
	^nil
"
	method := self composedActionMethodNameForView: viewSymbol.
	(self canUnderstand: method) ifTrue: [^method].
	^nil
"
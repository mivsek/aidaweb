view, action methods
actionMethodForView: aViewSymbol
	"obsolete, only for WebSecurityManagerApp !"
	| method viewSymbol |
	viewSymbol := aViewSymbol isEmpty 
		ifTrue: [self defaultView] ifFalse: [aViewSymbol asSymbol].
	method := self composedActionMethodNameForView: viewSymbol.
	(self canUnderstand: method) ifFalse: [^nil].
	^method
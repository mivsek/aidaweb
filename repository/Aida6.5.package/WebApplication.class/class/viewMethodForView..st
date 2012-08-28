view, action methods
viewMethodForView: aViewSymbol
	| method viewSymbol |
	viewSymbol := aViewSymbol isEmpty 
		ifTrue: [self defaultView] ifFalse: [aViewSymbol].
	method := self composedMethodNameForView: viewSymbol.
	(self canUnderstand: method) ifFalse: [^nil].
	^method

"WebDemoApp new class viewMethodForView: #imageGallery"
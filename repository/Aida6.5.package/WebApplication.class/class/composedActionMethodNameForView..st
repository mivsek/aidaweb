private
composedActionMethodNameForView: aViewName
	^('action', (self capitalizeName: aViewName asString)) asSymbol

"WebApplication composedActionMethodNameForView: 'main'"
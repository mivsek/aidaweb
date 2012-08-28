private
composedMethodNameForView: aViewName
	^('view', (self capitalizeName: aViewName asString)) asSymbol

"WebApplication new class composedMethodNameForView: 'main'"
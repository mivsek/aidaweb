private
composedActionMethodNameForView: aViewName action: aSymbol
	| mtname |
	mtname := (self composedActionMethodNameForView: aViewName) asString.
	aSymbol notNil ifTrue:
		[mtname := mtname, (self capitalizeName: aSymbol asString)].
	^mtname asSymbol

"WebApplication composedActionMethodNameForView: 'main' action: 'addFolder'"
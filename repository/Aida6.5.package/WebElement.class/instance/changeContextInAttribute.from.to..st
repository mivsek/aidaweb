private-ajax
changeContextInAttribute: aString from: oldCtx to: newCtx
	| in out aidaCtx |
	aidaCtx := WebContext contextIdName.
	(('*', aidaCtx, '*') match: aString) ifFalse: [^nil].
	in := aString readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[out nextPutAll: (in upToAll: aidaCtx). 
		in atEnd not ifTrue: 
			[in next "=". in upTo: $&.               "& not always? "
			out nextPutAll: aidaCtx, '=', newCtx id printString, '&' ] ].   
	^out contents
private
changeContextFrom: oldCtx to: newCtx
	"scan for all references to context ids and change them. Also in subelements"
	| in out aidaCtx sep |
	aidaCtx := WebContext contextIdName.
	(('*', aidaCtx, '*') match: self script) ifFalse: [^nil].
	in := self script readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse: 
		[out nextPutAll: (in upTo: aidaCtx). 
		in atEnd not ifTrue: 
			[in skip "=". sep := in upTo: $&.
			out nextPutAll: aidaCtx, '=', newCtx id printString, sep ] ].
	self script: out contents
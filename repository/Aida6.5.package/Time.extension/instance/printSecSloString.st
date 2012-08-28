*Aida
printSecSloString
	^self hours printString, ':',
		(self minutes < 10 ifTrue: ['0'] ifFalse: ['']), self minutes printString, ':',
		(self seconds < 10 ifTrue: ['0'] ifFalse: ['']), self seconds printString

"Time now printSecSloString"
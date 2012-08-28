*Aida
printSloString
	^"(self hours < 10 ifTrue: ['0'] ifFalse: [''])," self hours printString, ':',
		(self minutes < 10 ifTrue: ['0'] ifFalse: ['']), self minutes printString

"Time now printSloString"
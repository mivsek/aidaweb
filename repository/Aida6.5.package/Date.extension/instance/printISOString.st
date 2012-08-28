*Aida
printISOString
	^self year printString, 
		(self monthIndex < 10 ifTrue: ['0'] ifFalse: ['']), self monthIndex printString,
		(self dayOfMonth < 10 ifTrue: ['0'] ifFalse: ['']), self dayOfMonth printString

"Date today printISOString   "
*Aida
monthAndDayString
	"with leading zeros, example: 05-16 for 16may"
	^(self monthIndex < 10 ifTrue: ['0'] ifFalse: ['']), self monthIndex printString, '-',
	 	(self underlyingDate dayOfMonth < 10 ifTrue: ['0'] ifFalse: ['']), self underlyingDate dayOfMonth printString

"SpDate today monthAndDayString"
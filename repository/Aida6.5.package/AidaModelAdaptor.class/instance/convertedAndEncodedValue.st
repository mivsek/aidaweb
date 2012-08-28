accessing
convertedAndEncodedValue
	self format = #iso ifTrue: 	"Date should be ISO formated: yyyy-mm-dd"
		[^self value year printString, '-', 
			(self value monthIndex < 10 ifTrue: ['0'] ifFalse: ['']), self value monthIndex printString, '-',
			(self value dayOfMonth < 10 ifTrue: ['0'] ifFalse: ['']), self value dayOfMonth printString].
	^self value
*Aida
withZeros
	"return three digit number with leading zeros"
	^(self < 100 ifTrue: ['0'] ifFalse: ['']), 
	(self < 10 ifTrue: ['0'] ifFalse: ['']), 
	self printString.
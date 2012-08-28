*Aida
printDotStringNoZero
	"don't print anything if zero"
	^self ~= 0 ifTrue: [self printDotString] ifFalse: ['']
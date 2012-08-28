private
printSeconds: aNumber
	^(aNumber // 3600) printString, ':',
	(self twoDigits: aNumber \\ 3600 // 60), ':',
	(self twoDigits: aNumber \\ 60)
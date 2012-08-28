*Aida
shortPrintSloString
	^self underlyingDate dayOfMonth printString, '.', 
		self underlyingDate monthIndex printString, '.', self year printString.

"SpDate today shortPrintSloString"
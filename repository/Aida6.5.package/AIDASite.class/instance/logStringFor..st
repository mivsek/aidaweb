private-serving
logStringFor: aRequest
	^self name, ' ',
 		Date today dayOfMonth printString, '.',
		Date today monthIndex printString, ' ',
		Time now hours printString, ':', 
		Time now minutes printString,
		' from ', (aRequest peer notNil ifTrue: [aRequest peer] ifFalse: ['']), ' url: ',
		aRequest urlString
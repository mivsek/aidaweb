private-serving
logRequest: aRequest
	| text |
	self diagnostics ifFalse: [^nil].
	text := self name, ' ',
 		Date today dayOfMonth printString, '.',
		Date today monthIndex printString, ' ',
		Time now hours printString, ':', 
		Time now minutes printString,
		' from ', (aRequest peer notNil ifTrue: [aRequest peer] ifFalse: ['']), ' ',
		aRequest methodName, ' ',
		aRequest urlString.
	self log: self cr, text, self cr, text, '              s'.
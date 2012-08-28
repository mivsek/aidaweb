private
isExactMatchRequested: aString
	" if string is in quotation "
	aString isEmpty ifTrue: [^false].
	^aString trimBlanks first = $" and: [aString trimBlanks last = $" ]
private
printString
	^'aScheduledEvent 
	timestamp: ', self timestamp printSloString, ':', self timestamp asTime second printString, '
	period: ', self period key printString, ' ', self period value printString, '
	method: ', self method printString, '
	object: ', self object printString, '
	block: ', self block printString
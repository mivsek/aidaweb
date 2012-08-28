private-serving
addressTextFor: anIPAddress

	^((anIPAddress hostAddress at: 1) printString, '.',
	(anIPAddress hostAddress at: 2) printString, '.',
	(anIPAddress hostAddress at: 3) printString, '.',
	(anIPAddress hostAddress at: 4) printString)
instance creation
newForEvent: aSymbol on: aWebElement 
	^super new
		element: aWebElement;
		event: aSymbol
private-events
eventHandlerFor: aSymbol
	^self eventHandlers 
		at: aSymbol 
		ifAbsentPut: [WebEventHandler newForEvent: aSymbol on: self]
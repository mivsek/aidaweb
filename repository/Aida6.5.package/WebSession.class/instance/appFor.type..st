private-app state
appFor: anObject type: aSymbol 
	^(self appsForObjects at: anObject ifAbsent: [^nil]) 
		at: aSymbol ifAbsent: [^nil]
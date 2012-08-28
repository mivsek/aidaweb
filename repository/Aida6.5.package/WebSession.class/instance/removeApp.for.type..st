private-app state
removeApp: anApplication for: anObject type: aSymbol
	(self appsForObjects at: anObject ifAbsent: [^nil])
		removeKey: aSymbol ifAbsent: [^nil]
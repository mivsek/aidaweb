private-ids
removeId: aSymbol
	| element |
	element := self ids at: aSymbol ifAbsent: [^nil].
	self ids removeKey: aSymbol.
	self registeredSet remove: element ifAbsent: [].
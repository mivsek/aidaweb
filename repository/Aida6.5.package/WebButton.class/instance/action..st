accessing
action: aSymbol
	aSymbol isSymbol ifFalse: [self error: 'button action must be a symbol'].
	self otherAt: #Action  put: aSymbol
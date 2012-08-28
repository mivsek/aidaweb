attributes
align: aSymbol
	"element alignment #left #center #right"
	(#(left center right) includes: aSymbol) ifFalse: [self error: 'wrong align symbol'].
	self attributesAt: #align put: aSymbol asString
attributes
align: aSymbol
	"set a horizontal aligment if cell content. It can be #left, #center #right or #justify"
	(#(left center right justify) includes: aSymbol) ifFalse: [self error: 'wrong align symbol'].
	self attributesAt: #align put: aSymbol asString.
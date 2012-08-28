attributes
align: aSymbol
	"set a horizontal aligment for all cells in this row. It can be #left, #center or #right"
	(#(left center right) includes: aSymbol) ifFalse: [self error: 'wrong align symbol'].
	self attributesAt: #align put: aSymbol asString.
attributes
valign: aSymbol
	"set a vertical aligment for all cells in this row. It can be #top, #middle, #bottom or #baseline"
	(#(top middle bottom baseline) includes: aSymbol) ifFalse: [self error: 'wrong valign symbol'].
	self attributesAt: #valign put: aSymbol asString.
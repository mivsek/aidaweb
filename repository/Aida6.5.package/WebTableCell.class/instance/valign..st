attributes
valign: aSymbol
	"set a verttical aligment if cell content. It can be #top, #middle, #bottom or #baseline"
	(#(top middle bottom baseline) includes: aSymbol) ifFalse: [self error: 'wrong valign symbol'].
	self attributesAt: #valign put: aSymbol asString.
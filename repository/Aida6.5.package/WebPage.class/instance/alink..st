attributes
alink: aSymbol
	"set the color of active link text. It can be in hex format (for example #00FF00) 
	or name of color (for example #White)"
	self attributesAt: #alink put: (self colorValue: aSymbol)
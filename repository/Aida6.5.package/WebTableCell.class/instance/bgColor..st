attributes
bgColor: aColorSymbol
	"set the color of table cell background. It can be in hex format (for example #00FF00) 
	or name of color (for example #White)"
	self attributesAt: #bgcolor put: (self colorValue: aColorSymbol)
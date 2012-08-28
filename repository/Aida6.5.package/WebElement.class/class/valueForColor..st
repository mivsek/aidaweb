color values
valueForColor: aColorSymbolOrString
	"return a hex value for specified color. Case of color string is not important. 
	return red if color is unknown"
	| color |
	color := aColorSymbolOrString asString asLowercase asSymbol.
	^self colorDictionary at: color ifAbsent: [^self colorDictionary at: #red].

"
WebElement valueForColor: 'blue' 
"
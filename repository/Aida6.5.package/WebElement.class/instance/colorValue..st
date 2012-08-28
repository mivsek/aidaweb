private
colorValue: aColorSymbol
	"Hex number format is: #rrbbgg if not in that format, then it can be a color name as defined in 
	class variable Colors (class method initColorDictionary). If unknown color, then attribute is set to nil"
	| attribute |
	attribute := aColorSymbol asString asLowercase asSymbol.
	attribute := WebElement colorDictionary at: attribute ifAbsent:
		[attribute asString do: [:chr | 
			(chr isDigit or: [chr asInteger between: $a asInteger and: $f asInteger]) ifFalse: [^self] ] ].
	^'#', (attribute asString copyWithout: $# )

"WebElement new colorValue: #red"
color values
colorDictionary
	"return a dictionary of color names as keys and hex values for colors in 
	some web elements such as page and table background, text, links etc."
	Colors isNil ifTrue: [self initColorDictionary].
	^Colors
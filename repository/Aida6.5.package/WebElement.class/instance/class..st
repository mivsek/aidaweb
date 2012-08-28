attributes
class: aSymbolOrArray
	"one or more style classes of that element. Used for Cascaded Style Sheets"
	| clsText |
	(self class == WebElement and: [self hasTag not]) ifTrue: [self setDiv]. "ensure at least some tag"
	clsText := (aSymbolOrArray class = Array)
		ifTrue: [aSymbolOrArray
			inject: '' into: [:text :cls | cls = aSymbolOrArray first 
				ifTrue: [cls asString] ifFalse: [text, ' ', cls asString]] ] 
		ifFalse: [aSymbolOrArray asString].
	self attributesAt: #class put: clsText
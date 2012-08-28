adding text
addTextAspect: aSymbol for: anObject attributes: aSymbolOrArray
	"depening on portlet mode (#view or #edit) return only text or make an input field"
	^self app inEditMode
		ifTrue: [self addInputFieldAspect: aSymbol for: anObject]
		ifFalse: [self addText: (anObject perform: aSymbol) attributes: aSymbolOrArray]
adding form elements
addAspect: aSymbol for: anObject input: aBoolean size: aSizeNumberOrPoint
	"adds an auto converted text of aspect for that object. If imput argument is true, then add 
	an input field or text area, depending in size (eg. size: 5 or size: 5@5)"
	aBoolean
		ifFalse: 
			[^self addText: (WebFormElement autoConvertToString: (anObject perform: aSymbol))]
		ifTrue:
			[(aSizeNumberOrPoint isKindOf: Number) 	ifTrue: 
				[^self add: (WebInputField new
							size: aSizeNumberOrPoint;
							aspect: aSymbol for: anObject)].
			(aSizeNumberOrPoint isKindOf: Point) ifTrue: 
				[^self add: (WebTextArea new
							size: aSizeNumberOrPoint;
							aspect: aSymbol for: anObject)] 
			].
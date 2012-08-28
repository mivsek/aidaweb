private
textAttributes: anArray
	"check and set the attributes of a text. Atribute can be one or a set of them" 

	(anArray isKindOf: Symbol)		"if only one attribute, convert to an Array"
		ifTrue: [textAttributes := Array with: anArray.       ]
		ifFalse: [(anArray isKindOf: Array)
			ifTrue: [textAttributes := anArray.      ]
			ifFalse: [anArray isNil
				ifTrue: [textAttributes := nil.     ]
				ifFalse: 
					[self error: 'Text attributes should be Array of Symbols']]].

"WebText text: 'test' attributes: #b"
"WebText text: 'test' attributes: #( #b #i)"
"WebText text: 'test' attributes: nil"
private-indexing
privIndexObject: anObject
	"index all words in text. Index title with weight 100 as well"
	| textDict titleDict |
	(anObject class canUnderstand: #indexText) ifTrue:
		[textDict := self wordsInText: anObject indexText.
	(anObject class canUnderstand: #indexTitle) ifTrue:
		[titleDict := self wordsInText: anObject indexTitle].
		titleDict keysDo: [:word | titleDict at: word put: (titleDict at: word)*100]. "weight words in title 100x"	
		titleDict keysDo: [:word | 
			(textDict includesKey: word) 
				ifFalse: [textDict at: word put: (titleDict at: word)]
				ifTrue: [textDict at: word put: (textDict at: word) + (titleDict at: word)] ] ].	
	self indexWords: textDict inObject: anObject
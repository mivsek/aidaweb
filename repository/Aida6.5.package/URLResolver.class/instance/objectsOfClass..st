accessing
objectsOfClass: aClass
	^self allWebPages keys select: [:object | object class = aClass ]

"URLResolver default objectsOfClass: WebMethodImage"
translating
translate: aMultilangAssociation to: aLanguageCode for: anElement on: aSession
	| translClass translation |
	translClass := aSession lastApp class. "app class where translations reside"
	translation := self 
		cachedTranslate: aMultilangAssociation value
		toLanguage: aLanguageCode
		class: translClass
		method: anElement creationMethod. "method which created an element with multilang text"
	^translation notNil 
		ifTrue: [translation] 
		ifFalse: [aMultilangAssociation value] "original text"
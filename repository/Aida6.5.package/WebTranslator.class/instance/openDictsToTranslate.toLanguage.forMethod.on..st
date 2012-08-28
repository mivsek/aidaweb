private-classes-changes
openDictsToTranslate: aMultilangAssociation toLanguage: aLanguageCode forMethod: aMethodSymbol on: aClassWithTransl
	"check/create dict for orig language, then create dict for specified language"
	| origLang translMethod pairs pair |
	origLang := aMultilangAssociation key.
	translMethod := self translMethodForLang: origLang method: aMethodSymbol.
	pairs := (aClassWithTransl respondsTo: translMethod) 
		ifTrue: [self pairsForLang: origLang method: aMethodSymbol on: aClassWithTransl.]
		ifFalse: [OrderedCollection new].
	self changePairs: pairs key:  aMultilangAssociation value value: aMultilangAssociation value.
	self writeBackPairs: pairs intoMethod: translMethod onClass: aClassWithTransl.
	translMethod := self translMethodForLang: aLanguageCode method: aMethodSymbol.
	pair := aMultilangAssociation value -> aMultilangAssociation value. "default one for specified lang too"	
	self writeBackPairs: (Array with: pair) intoMethod: translMethod onClass: aClassWithTransl
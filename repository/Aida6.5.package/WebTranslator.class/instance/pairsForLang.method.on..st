private-classes
pairsForLang: aLanguageCode method: aMethodSymbol on: aClassWithTransl
	| translMethod pairs |
	translMethod := self translMethodForLang: aLanguageCode method: aMethodSymbol.
	pairs := (aClassWithTransl perform: translMethod) 
		collect: [:triple | Association 
			key: (AIDASite convert: triple first fromCodepage: #UTF8)
			value: (AIDASite convert: triple last fromCodepage: #UTF8)]. "triple midlle is just ->"
	^pairs asOrderedCollection
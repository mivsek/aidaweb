translating
changeTranslationKey: aKeyString to: aNewString language: aLanguageCode class: aClassWithTransl method: aMethodSymbol
	"change that translation by recompiling the apropriate method in a class side of App class"
	| translMethod translPairs |
	translMethod := self translMethodForLang: aLanguageCode method: aMethodSymbol.
	self checkOrCreateMethod: translMethod onClass: aClassWithTransl.
	translPairs := self pairsForLang: aLanguageCode method: aMethodSymbol on: aClassWithTransl.
	translPairs := self changePairs: translPairs key: aKeyString value: aNewString.
	self writeBackPairs: translPairs intoMethod: translMethod onClass: aClassWithTransl
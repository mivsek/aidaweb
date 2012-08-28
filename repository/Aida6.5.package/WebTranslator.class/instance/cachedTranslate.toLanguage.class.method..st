private-cache
cachedTranslate: aString toLanguage: aLanguageCode class: aClassWithTransl method: aMethodSymbol
	"cache hierarchy: class->(method->(langCode->(key->translation))))) "
	"last dictionary is WebTranslDict! "
	^(((self cache at: aClassWithTransl ifAbsent: [self refreshClass: aClassWithTransl])
		at: aMethodSymbol ifAbsentPut: [^aString])
			at: aLanguageCode ifAbsent: [^aString])
				at: aString ifAbsent: [^aString]
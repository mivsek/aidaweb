private-classes
translMethodForLang: aLanguageCode method: aMethodSymbol
	"compose that method name. For #fr and #viewCalendar = #frViewCalendar"
	^(aLanguageCode asString, (String with: aMethodSymbol asString first) asUppercase,
		(aMethodSymbol asString copyFrom: 2 to: aMethodSymbol size))
			asSymbol
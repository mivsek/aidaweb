private-classes
methodFromTranslMethod: aMethodSymbol
	"extract creation method name from transl.method:  #viewCalendar from #frViewCalendar"
	| method |
	method := String with: (aMethodSymbol asString at: 3) asLowercase.
	^(method, (aMethodSymbol asString copyFrom: 4 to: aMethodSymbol size)) asSymbol.
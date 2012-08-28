private-classes
langFromTranslMethod: aMethodSymbol
	"extract language code from transl.method:  #fr from #frViewCalendar"
	^(aMethodSymbol asString copyFrom: 1 to: 2) asSymbol
private-testing
hasShortDates
	"year in two digits only"
	^self settingsAt: #shortDates ifAbsent: [false]
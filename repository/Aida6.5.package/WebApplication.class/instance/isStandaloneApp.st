testing
isStandaloneApp
	"it is not a representation of some domain object in MVC fashion"
	^self otherAt: #StandaloneApp ifAbsent: [false]
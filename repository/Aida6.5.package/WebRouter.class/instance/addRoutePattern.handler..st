adding-removing
addRoutePattern:  aPatternString handler: aHandler
	"add a route at the end of routes"
	^self routes add: (aPatternString -> aHandler)
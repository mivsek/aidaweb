adding-removing
addFirstRoutePattern:  aPatternString handler: aHandler
	"add a route at the start of routes"
	^self routes addFirst: (aPatternString -> aHandler)
adding-removing
addMethodResourcesRoute
	"AIDASite allInstances do: [:each | 
		each router addMethodResourcesRoute.
		each urlResolver removeObjectsOfClass: WebMethodResource] "
	"WebStyles holds method resources like JS, CSS, etc, while method images are dealed in URLResolver"
	(self routes contains: [:route | route value isKindOf: WebStyle]) "only one static server!"
		ifTrue: [^nil].
	self addRoutePattern: '/*' handler: self site style
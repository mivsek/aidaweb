adding-removing
addURLResolverRoute
	"URLResolver as a two-way router between urls and domain objects"
	(self routes contains: [:route | route value isKindOf: WebStaticServer]) "only one url resolver!"
		ifTrue: [^nil].
	self addRoutePattern: '/*' handler: self site urlResolver
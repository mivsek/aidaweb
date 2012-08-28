adding-removing
addStaticServerRoute
	"WebStaticServer as an one-way router to serve static files"
	(self routes contains: [:route | route value isKindOf: WebStaticServer]) "only one static server!"
		ifTrue: [^nil].
	self addRoutePattern: '/*' handler: self site staticServer
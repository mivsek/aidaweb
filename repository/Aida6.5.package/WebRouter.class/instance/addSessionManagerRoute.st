adding-removing
addSessionManagerRoute
	"routes all session related requests like Ajax and WebSocket to session manager"
	"AIDASite allInstances do: [:site | site router addSessionManagerRoute] "
	(self routes contains: [:route | route value class == WebSessionManager]) "only one route!"
		ifTrue: [^nil].
	self addFirstRoutePattern: '/aidasession/*' handler: self site sessionManager
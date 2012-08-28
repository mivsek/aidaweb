initialize-release
initDefaultRoutes
	self addSessionManagerRoute. "routes all session related requests like WebSocket"
	self addURLResolverRoute.
	self addMethodLibrariesRoute.
	self addMethodResourcesRoute.  "to the style (WebStyle subclass)"
	self addStaticServerRoute.
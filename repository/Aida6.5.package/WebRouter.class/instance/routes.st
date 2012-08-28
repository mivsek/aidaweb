accessing
routes
	routes ifNil: [self initRoutes].
	^routes
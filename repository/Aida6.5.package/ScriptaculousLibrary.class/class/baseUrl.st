accessing
baseUrl
	BaseUrl ifNil: [self baseUrl: '/scriptaculous'].
	^BaseUrl
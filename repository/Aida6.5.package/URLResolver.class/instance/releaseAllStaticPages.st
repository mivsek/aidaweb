static pages
releaseAllStaticPages

	self allWebPages keysDo: [:object | 
		(object isKindOf: FileProxy) ifTrue: [object releaseContent] ]

"URLResolver default releaseAllStaticPages"
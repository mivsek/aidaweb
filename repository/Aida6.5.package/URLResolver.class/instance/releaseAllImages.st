static pages
releaseAllImages
	self allWebPages keys do: [:obj |
		((obj isKindOf: FileProxy) and: ['*image*' match: obj aidaContentType])
			ifTrue: [obj releaseContent] ]

"URLResolver default releaseAllImages"
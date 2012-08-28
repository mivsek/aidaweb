static pages
releaseAllHTMLPages

	self allWebPages keys do: [:obj |
		(obj isKindOf: FileProxy) ifTrue:
	 		[obj releaseContent] ]

"URLResolver default releaseAllHTMLPages"
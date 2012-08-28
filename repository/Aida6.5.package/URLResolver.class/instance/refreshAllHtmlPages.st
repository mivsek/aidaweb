static pages
refreshAllHtmlPages
	""

	| count |
	count := 1.
	self allWebPages keys do: [:object |
		(object isKindOf: FileProxy) ifTrue:	 
			[count \\ 10 = 0 ifTrue: [Transcript cr; show: count printString].
			object refreshContent.
			count := count + 1] ].

"URLResolver default refreshAllHTMLPages"
parsing
prepareHTMLPage
	"decompose content into elements (texts and tags)"
	| stream tag index |
	self clearElements. self clearImgTagIndexes. 
	self clearLinkTagIndexes. self clearServletTagIndexes.
	stream := ReadStream on: self content.
	index := 1.
	[stream atEnd] whileFalse:
		[self elements add: (stream upTo: $<). index := index + 1.
		tag := ('<', (stream upTo: $>), '>').
		('<aida*' match: tag) ifTrue: [self servletTagIndexes add: index].
		('*img*' match: tag) ifTrue: [self imgTagIndexes add: index].
		('*href*' match: tag) 
			ifTrue: [self linkTagIndexes add: index]
			ifFalse: 
				[(('*body*' match: tag) and: [('*/body*' match: tag) not])
					ifTrue: [self bodyTagIndex: index]].
		self elements add: tag. index := index + 1.
		].
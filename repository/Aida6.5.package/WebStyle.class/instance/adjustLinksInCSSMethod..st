maintenance
adjustLinksInCSSMethod: aMethodSymbol
	"external image links in CSS are changed to format, eg. for arrow.gif  '/img/arrowGif.gif' "
	"this method is then recompiled back in 'styles-screen' ! "
	"WebStyle new adjustLinksInCSSMethod: #css1Body"
	| method in out chunk link dd |
	method := self class compiledMethodAt: aMethodSymbol. method := method getSource asString.
	in := method readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse:
		[chunk := in upToAll: 'url('. in atEnd not ifTrue: [in skip: 4]. link := in upTo: $). 
		dd := (link includes: $") ifTrue: [link := link copyWithout: $". '"'] ifFalse: [''].
		out nextPutAll: chunk. 
		link notEmpty ifTrue: 
			[link := self adjustCSSLink: link.  out nextPutAll: 'url(', dd, link, dd, ')'] ].
	out contents = method ifFalse:
		[self class compile: out contents classified: 'styles-screen'].
	^out contents
*Aida
asCollectionOfHtmlHeadings
	"find all headings H1-5 and return a collection of headings, complete with tags"
	| in tag collection line |
	in := self readStream. collection := OrderedCollection new.
	[in atEnd] whileFalse:
		[in upTo: $<. in atEnd ifFalse: [tag := in upTo: $>].
		(tag size >= 2 and: [tag first asLowercase = $h and: [(tag at: 2) isDigit]] ) ifTrue:
			[tag := String with: $h with: (tag at: 2). "cleaned, without any parms!"
			line := '<', tag, '>', (in upToAll: '</', tag, '>'), '</', tag, '>'. 
			collection add: line] ].
	^collection

" '<h1>Heading1</h1><h2>Heading2</h2>' asCollectionOfHtmlHeadings"
" '<h1><b>Heading1</b></h1>' asCollectionOfHtmlHeadings"
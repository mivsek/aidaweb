views-elements
resultsElement
	"return a web element for search results"
	| e abstract objTitle modifiedText modifiedDate first last assoc |
	first := (self page - 1) * self resultsOnPage + 1.
	last := (first + self resultsOnPage - 1) min: self results size.
	e := WebList  newDefinition id: #searchRslts.
	first to: last do: [:index |
		assoc := self results at: index.
		objTitle := (assoc key class canUnderstand: #indexTitle) 
			ifTrue: [self boldify: assoc key indexTitle] ifFalse: [self chopText: assoc key indexText toSize: 50].
		abstract := (assoc key class canUnderstand: #indexAbstract) 
			ifTrue: [assoc key indexAbstract]
			ifFalse: [self chopText: assoc key indexText "trimNewlines" toSize: self abstractTextSize].
		modifiedText := ''.
		(assoc key class canUnderstand: #modified) ifTrue: 
			[modifiedDate := assoc key modified. modifiedDate notNil ifTrue: 
				[modifiedText := 'changed: <b> ', modifiedDate shortPrintSloString, '</b>,  '] ].
		e addDefinitionTerm: (WebElement new addText: (index printDotString, '.  ');
			addLinkTo: assoc key text: objTitle;
"			addLinkTo: self observee gif: #copyIconGif title: 'Copy to web clipboard' 
				view: #copyToClipboard parameter: 'uuid' value: assoc key hash asString; "yourself).
		e addDefinition: (WebElement new addText: abstract).
"
		e newCell color: self tableRowColor; addText: 
			('modifiedText, 'visits: <b>', 
			(self site urlResolver counterFor: assoc key) total printDotString, '</b>')
"
		].
	^e
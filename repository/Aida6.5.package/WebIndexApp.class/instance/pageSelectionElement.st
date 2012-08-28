views-elements
pageSelectionElement

	| element pages |
	element := WebElement new.
	pages := self results size = 0
		ifTrue: [0]
		ifFalse: [(self results size // self resultsOnPage) + 1].
	pages = 1 ifTrue: [^element].
	element addText: '<font face="helvetica, arial" size="-1">'.
	1 to: pages do: [:index |
		index = self page
			ifTrue: [element addTextBold: index printString]
			ifFalse: 
				[element add: 
					((WebLink text: index printString linkTo: self observee )
						view: #results;
						parameter: 'page' value: index printString)].
		element addNbSp ].
	element addText: '</font>'.
	^element
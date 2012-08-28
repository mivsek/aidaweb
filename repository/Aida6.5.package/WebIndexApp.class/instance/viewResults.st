views
viewResults
	| e |
	self page: (self session lastRequest queryAt: 'page' ifAbsent: [self page]) asInteger.
	self title: 'Search results'.
	e := WebElement new.
      e table width: 1. "100%"
	e cell addTextH1: self title. e newRow.
	e cell color: #thistle;
		addInputFieldAspect: #searchString for: self size: 40; addButtonText: 'Search'.
	e newRow. e cell add: self resultNumberElement.
	e newRow. e add: self resultsElement.
	e newRow.
	e cell align: #center; add: self pageSelectionElement.
	^self style pageFrameWith: e title: self title.
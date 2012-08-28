views
viewHits
	| e |
	self title: 'Site  access statistics'.
	self adjustViewingDate.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	e cell add: (self graphElementCounter: self site pagesCounter total: self site totalCounter).
	^self style pageFrameWith: e title: self title .
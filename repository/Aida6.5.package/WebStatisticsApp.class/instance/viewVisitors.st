views
viewVisitors
	| e |
	self adjustViewingDate.
	self title: 'Site statistics - returning visitors'.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: (self graphSelectionForView: self view). e newRow.
	e cell add: (self graphElementCounter: self site returningVisitorsCounter 
		and: self site newVisitorsCounter).
	^self style pageFrameWith: e title: self title .
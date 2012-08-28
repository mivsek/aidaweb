views
viewReferersAll
	| e |
	self title: 'Site statistics - referers'.
	self adjustViewingDate.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	e cell add: self tabsReferersElement. e newRow.
	e cell addTextH1: 'Referers - visitors comming mostly from: '. e newRow.
	e cell add: (self referersElementFor: self observee allRefererCounts date: nil).
	^self style pageFrameWith: e title: self title .
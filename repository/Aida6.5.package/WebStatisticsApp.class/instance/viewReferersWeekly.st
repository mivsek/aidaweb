views
viewReferersWeekly
	| e |
	self title: 'Site statistics - referers'.
	self adjustViewingDate.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	e cell add: self tabsReferersElement. e newRow.
	e cell addTextH1: 'That week referers - visitors comming from: '. e newRow.
	e cell add: (self referersElementFor: self observee allRefererCountsWeekly date: nil).
	^self style pageFrameWith: e title: self title .
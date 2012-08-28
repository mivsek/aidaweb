views
viewReferers "Today"
	| e |
	self title: 'Site statistics - referers'.
	self adjustViewingDate.
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	e cell add: self tabsReferersElement. e newRow.
	e cell addNbSp: 4; addText: '<small><b>bold</b> = new in last 7 days</small>'. e newRow.
	e cell addTextH1: 'Today referers - visitors comming from: '. e newRow.
	e cell add: (self 
		referersElementFor: self observee allRefererCountsToday 
		date: SpDate today).
	^self style pageFrameWith: e title: self title .
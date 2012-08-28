views
viewMain
	| e counter |
	self title: 'Site statistics - page'.
	self adjustViewingDate.
	counter := self counterForUrlOrFirstPage. "from query part of url, otherwise first page"
	e := WebElement new.
	e cell add: self mainStatsElement. e newRow.
	e cell add: self tabsElement. e newRow.
	self isFirstPage ifFalse: [e cell add: self pageDescription. e newRow].
	counter notNil ifTrue: 
		[e cell add: (self graphElementCounter: counter and:nil)].
	^self style pageFrameWith: e title: self title .
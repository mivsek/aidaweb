views-elements
loggedSessionsElement
	| e grid |
	e := WebElement new. e table width: 1.
	e cell addText: 'All sessions, logged in now or in past. Bold if active in last hour.'. e newRow.
	grid := (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil 'state' 'user' 'Initial IP' 'created' 'last activity' 'login' 'logout');
		columnFilters: #(nil 3 10 6 true true );
		columnWidth: #(0.01 0.05 0.2  0.1 0.2 0.2);
		columnAlign: #(nil center center center center center);
		columnAspects: #(nil nil loginUserText initialIP createdTimestampText nil);
		columnLinkViews: #(nil nil nil nil);
		column: 2 addBlock: 
			[:ssion | self stateElementFor: ssion];
		column: 6 addBlock: 
			[:ssion | self lastActivityAndLocationElementFor: ssion];
		collection: ((self site sessionManager allWereLoggedSessions) "were or still are!"
"			asSortedCollection: [:u1 :u2 | u1 username < u2 username]");
		rowBoldIfTrue: [:s | s isActive];
		setNumbering;
		rowsOnPage: 50;
		yourself.
	e cell add: grid.	
	^e
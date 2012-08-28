views-elements
activeSessionsElement
	| e grid |
	e := WebElement new. e table width: 1.
	e cell addText: 'All currently active sesions on the site. Active = any request in last hour.'. e newRow.
	grid := (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil 'state' 'user' 'Initial IP' 'created' 'login' 'logout');
		columnFilters: #(nil 3 10 6 true);
		columnWidth: #(0.01 0.05 0.2  0.1 0.2);
		columnAlign: #(nil center center center center);
		columnAspects: #(nil loginStateText loginUserText initialIP createdTimestampText);
		columnLinkViews: #(nil nil nil);
		collection: ((self site sessionManager allActiveSessions) 
"			asSortedCollection: [:u1 :u2 | u1 username < u2 username]");
		setNumbering;
		rowsOnPage: 50;
		yourself.
	e cell add: grid.	
	^e
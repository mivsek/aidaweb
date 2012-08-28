views-elements
sessionsElement
	| e grid |
	e := WebElement new.
	grid := (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil nil 'Initial IP' 'created' 'login' 'logout');
		columnAspects: #(nil nil initialIP created);
		columnLinkViews: #(nil nil nil nil);
		columnFilters: #(nil nil true true);
		collection: ((self site sessionManager allSessionsForUser: self observee) 
"			asSortedCollection: [:u1 :u2 | u1 username < u2 username]");
		setNumbering;
		rowsOnPage: 20;
		yourself.
	e add: grid.	
	^e
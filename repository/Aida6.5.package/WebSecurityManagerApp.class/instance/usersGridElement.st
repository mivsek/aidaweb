printing-users groups
usersGridElement
	^ (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil 'Name' 'Username' nil 'Groups');
		columnAspects: #(nil nameSurname username nil nil);
		columnLinkViews: #(nil main main nil nil);
		collection: (self observee users asSortedCollection: [:u1 :u2 | u1 nameSurname < u2 nameSurname]);
		column: 4 addBlock: [:each | each isLocked 
			ifTrue: [self lockIconTitled: 'User locked for change and delete'] ifFalse: [WebElement new] ];
		column: 5 addBlock: [:each | self groupsOfUserElementFor: each];
		columnFilters: #(nil true true nil);
		setNumbering;
		rowsOnPage: 20;
		yourself
printing-users groups
groupsGridElement
	^ (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil 'Group name' nil 'Members');
		columnAspects: #(nil name nil nil );
		columnLinkViews: #(nil main nil);
		collection: (self observee allGroups asSortedCollection: [:g1 :g2 | g1 name < g2 name]);
		column: 3 addBlock: [:each | each isLocked 
			ifTrue: [self lockIconTitled: 'Group locked for name change and delete'] ifFalse: [WebElement new] ];
		column: 4 addBlock: [:each | self usersInGroupElementFor: each];
		columnFilters: #(nil true nil);
		setNumbering;
		rowsOnPage: 20;
		yourself
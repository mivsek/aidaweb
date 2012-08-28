views-elements
userSelectionElement
	^ (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil nil 'Username' 'Name');
		columnAspects: #(nil nil username nameSurname);
		columnLinkViews: #(nil nil main main);
		columnFilters: #(nil nil true true);
		column: 2 addBlock: [:usr | usr isLocked not
			ifTrue: [(WebCheckBox newForObject: usr from: self observee users) onChangePost]
			ifFalse: [self lockIconTitled: 'user locked for change and delete'] ];
		collection: (self site securityManager allUsers 
			asSortedCollection: [:u1 :u2 | u1 username < u2 username]);
		setNumbering;
		rowsOnPage: 20;
		yourself
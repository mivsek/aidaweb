views-elements
usersGridElement
	^ (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil 'Username' 'Name');
		columnAspects: #(nil username nameSurname);
		columnLinkViews: #(nil main main);
		collection: (self observee allUsers asSortedCollection: [:u1 :u2 | u1 username < u2 username]);
		columnFilters: #(nil true true);
		setNumbering;
		rowsOnPage: 20;
		yourself
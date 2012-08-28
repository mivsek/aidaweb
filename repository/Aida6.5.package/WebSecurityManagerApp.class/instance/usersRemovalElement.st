printing-users groups
usersRemovalElement
	self users: self observee allUsers.  "initial collection, needed in #removeOrUndoUsers too"
	^ (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil nil 'Username' 'Name');
		columnAspects: #(nil nil username nameSurname);
		columnLinkViews: #(nil nil main main);
		columnFilters: #(nil nil true true);
		column: 2 addBlock: [:useer | useer isLocked not
			ifTrue: [(WebCheckBox newForObject: useer from: self usersToRemove) 
					onChangePostAndDo: [ self removeOrUndoUser] ]
			ifFalse: [self lockIconTitled: 'This user is locked for changes and delete'] ]; 
		collection: (self users asSortedCollection: [:u1 :u2 | u1 username < u2 username]);
		setNumbering;
		rowsOnPage: 20;
		yourself
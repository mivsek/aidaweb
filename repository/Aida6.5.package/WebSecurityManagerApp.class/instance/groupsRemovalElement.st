printing-users groups
groupsRemovalElement
	self groups: self observee allGroups.  "initial collection, needed in #removeOrUndoGroups too"
	^ (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil nil 'Group name');
		columnAspects: #(nil nil name);
		columnLinkViews: #(nil nil main);
		columnFilters: #(nil nil true);
		column: 2 addBlock: [:grp | grp isLocked not
			ifTrue: [(WebCheckBox newForObject: grp from: self groupsToRemove) 
					onChangePostAndDo: [ self removeOrUndoGroup] ]
			ifFalse: [self lockIconTitled: 'This group is locked for changes and delete'] ]; 
		collection: (self groups asSortedCollection: [:g1 :g2 | g1 name < g2 name]);
		setNumbering;
		rowsOnPage: 20;
		yourself
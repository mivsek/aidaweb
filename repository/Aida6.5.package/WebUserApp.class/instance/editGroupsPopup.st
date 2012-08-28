views-edit
editGroupsPopup
	| e |
	e := WebElement new. e table width: 1.
	e cell colspan:2; addRuler. e newRow.
	e cell add: ((WebGrid new width: 250)
		columnNames: #(nil nil 'Name'); columnAlign: #(nil nil left);
		columnAspects: #(nil nil name);
		columnLinkViews: #(nil nil main);
		column: 2 addBlock: [:grp | WebCheckBox newForObject: grp from: self groups ];
		collection: (self site securityManager allGroups asSortedCollection: [:a :b | a  name < b name]);
		setNumbering;
		yourself).
	(e cell addButtonText: 'Save' action: #changeGroups)
		onSubmitDo: [self actionMainChangeGroups];
		onSubmitClose.
	e cell addSpace. e cell addCloseLinkText: '<small>Cancel without saving<small>'.
	^e
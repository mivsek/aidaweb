views-grid
classesEditElement
	| e |
	e := WebElement new.
	e addButtonText: 'Save' action: #save.
	e add: (WebGrid new
		columnNames: #('' 'Class name');
		columnAspects: #(nil #name);
		sortOn: 2;
		collection: WebApplication allWebAppClasses;
		checkboxesColumn: 1 collection: self selectedClasses;
		yourself).
	^e
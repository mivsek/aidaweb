views-grid
classesSelectedElement
	| e |
	e := WebElement new.
	e addButtonText: 'Select classes' action: #editMembers.
	e add: (WebGrid new
		columnNames: #('nr.' 'Class name');
		columnAspects: #(nil #name);
		setNumbering; sortOn: 2;
		collection: self selectedClasses;
		yourself).
	^e
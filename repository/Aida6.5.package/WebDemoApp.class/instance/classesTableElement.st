views-grid
classesTableElement
	| e |
	e := WebElement new.
	e add: (WebGrid new
		columnNames: #('nr.' 'Class name');
		columnFilters: #(nil true);
		columnAspects: #(nil #name);
		setNumbering; sortOn: 2;
		collection: WebApplication allWebAppClasses;
		yourself).
	^e
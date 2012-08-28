views-grid
viewGrid
	| e |
	e := WebElement new.
	e cell addTextH1: 'WebGrid, tabs, live filtering, Ajax sorting, checkboxes...'. e newRow.
	e cell addText: 'See the code in method #viewGrid from WebDemoApp'. e newRow.
	e cell add: self gridTabsElement. e newRow.
	e cell add: self classesTableElement.
	self style pageFrameWith: e title: 'Grid example'
views-grid
viewGridSelected
	| e |
	e := WebElement new.
	e cell addTextH1: 'WebGrid, tabs, live filtering, Ajax sorting, checkboxes...'. e newRow.
	e cell add: self gridTabsElement. e newRow.
	e cell add: self classesSelectedElement.
	self style pageFrameWith: e title: 'Grid example'
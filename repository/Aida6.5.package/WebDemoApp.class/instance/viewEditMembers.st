views-grid
viewEditMembers
	| e |
	e := WebElement new.
	e cell addTextH1: 'WebGrid, tabs, live filtering, Ajax sorting, checkboxes...'. e newRow.
	e cell add: self classesEditElement.
	self style pageFrameWith: e title: 'Grid example'
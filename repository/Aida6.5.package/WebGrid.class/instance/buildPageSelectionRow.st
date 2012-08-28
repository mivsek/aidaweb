private-building
buildPageSelectionRow
	| fullLength |
	self newRow. self row class: #tablePageSelection.
	self cell colspan: self columns size; align: #center.
	fullLength := self filtered size.
	1 to: (fullLength // self rowsOnPage) + 1 do: [:inx |
		inx = self page 
			ifTrue: [self cell addTextBold: inx printString]
			ifFalse: [self cell add: (self linkForPage: inx)].
		self cell addText: ' | '].
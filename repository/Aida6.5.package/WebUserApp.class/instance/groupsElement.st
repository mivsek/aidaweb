views-elements
groupsElement
	| e |
	e := WebElement new. e table width: 1.
	e cell valign: #top; width: 100; addText: 'Groups:'. e cell addBreak.
	(e cell addNilLinkText: 'edit')
		onClickPopup: self editGroupsPopup thenUpdate: e.
	e newCell.
	(self observee groups asSortedCollection: [:a :b | a name < b name]) do: [:each |
		e cell addLinkTo: each text: each name. e cell addBreak].
	^e
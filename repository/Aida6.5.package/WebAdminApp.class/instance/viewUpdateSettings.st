views
viewUpdateSettings
	| e |
	self	title: 'Update Settings for site: ', self site name.
	e := WebElement new.
	e table width: 500.
      e cell color: #yellow;  addText: self title header: 3. e newRow.
	e cell add: (self settingsElementForm: true). e newRow.
	e cell addButtonText: 'Update'.
	^self style pageFrameWith: e title: self title .
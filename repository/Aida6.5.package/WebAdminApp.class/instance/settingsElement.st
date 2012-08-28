views-elements
settingsElement
	| e |
	e := WebElement new.
	e table width: 500.
      e cell color: #yellow; addText: self title header: 3. e newRow.
	e cell add: (self settingsElementForm: false). e newRow.
	e cell addLinkTo: self observee text: '<b>Update settings</b>' view: #updateSettings.
	^e
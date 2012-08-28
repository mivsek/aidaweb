views-ajax
ajaxAutocompleteExampleTo: e
	| field1 field2 result |
	e cell colspan: 2; addTextH4: 'Example: Autocomplete field with data from server'. e newRow.
	e cell valign: #top; addTextSmall: 'Type first chars of month names to select: '; addBreak.
	field1 := WebAutocompleteField 
		aspect: #field1 for: self observee choicesAspect: #monthsStarting: for: self.
	e cell add: field1.
	e newCell addTextSmall: 'Again, the choice will be posted instantly: '. e cell addBreak.
	result := self ajaxAutocompleteResult.
	field2 := WebAutocompleteField 
		aspect: #field2 for: self observee choicesAspect: #monthsStarting: for: self.
	field2 afterPostAndUpdate: result.
	e cell add: field2. e cell addBreak.
	e cell add: result.
	^e
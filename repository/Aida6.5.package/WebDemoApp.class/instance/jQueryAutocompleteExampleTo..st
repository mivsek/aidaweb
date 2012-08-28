views-jquery
jQueryAutocompleteExampleTo: e
	| field1 |
	e cell colspan: 2; addTextH4: 'Example: jQuery Autocomplete field with data from server'. e newRow.
	e cell valign: #top; addTextSmall: 'Type first chars of month names to select: '; addBreak.
	field1 := WebAutocomplete2Field 
		aspect: #field1 for: self observee choicesAspect: #monthsStarting: for: self.
	e cell add: field1.
	^e
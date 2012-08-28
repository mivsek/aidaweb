private-obsolete
respondToAjaxAutocomplete: aRequest
	|  form fieldName fieldValue field choices e |
	form := self formPostedFrom: aRequest.
	fieldName := aRequest ajaxSingleInputName.
	fieldValue := (aRequest "context request" postDataAt: fieldName) value.
	fieldValue := AIDASite convert: fieldValue fromCodepage: #utf8.
	field := form fields at: fieldName. 
	choices := field getChoicesForEntry: fieldValue.
	e := WebList newUnordered.
	choices do: [:each || string |
		string := each convertToSloveneChars.
		e add: (WebRawText text: (AIDASite convert: string toCodepage: #utf8))].
	^e
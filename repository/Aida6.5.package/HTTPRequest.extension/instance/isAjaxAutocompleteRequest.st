*Aida
isAjaxAutocompleteRequest
	"AJAX autocomplete input field request, see WebAutocompleteField"
	self isAjaxRequest ifFalse: [^false].
	^self includesQuery: 'ajaxAutocompleteField'
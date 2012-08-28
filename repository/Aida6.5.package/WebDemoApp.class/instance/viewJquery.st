views
viewJquery
	| e |
	e := WebElement new. e table width: 1. "100%"
	e cell colspan: 2; addTextH1: 'Simple jQuery examples'. e newRow. 
	self jQueryAutocompleteExampleTo: e. e newRow.
	self jQueryEditableExampleTo: e. e newRow.
	self style pageFrameWith: e title: 'AJAX examples'
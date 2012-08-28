views
viewAjax
	| e |
	e := WebElement new. e table width: 1. "100%"
	e cell colspan: 2; addTextH1: 'Simple AJAX examples'. e newRow. 
	e cell addText: 'See the code in method #viewAjax from WebDemoApp'. e newRow.
	e cell width: 0.6; valign: #top; add: self ajaxUpdateTimeExample. 
"	e newCell width: 0.4; valign: #top; add: self ajaxPeriodicUpdaterExample.  " e newRow. 
	self ajaxLiveAndDelayedFieldExampleTo: e. e newRow.
	self ajaxAutocompleteExampleTo: e. e newRow.
	e cell add: self ajaxInPlaceEditorExample. e newRow.
	e cell valign: #top; add: self ajaxPopupWindowExample.
	e newCell valign: #top; add: self ajaxPopupDialogExample. e newRow.
	e cell valign: #top; add: self ajaxSubmitExample. 
	e newCell valign: #top; add: self ajaxValidationExample. e newRow.
	self style pageFrameWith: e title: 'AJAX examples'
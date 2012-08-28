views
viewWidgets
	| e |
	e := WebElement new. e table width: 1. "100%"
	e cell colspan: 2; addTextH1: 'Widget examples'. e newRow. 
	e cell addText: 'See the code in method #viewWidgets from WebDemoApp'. e newRow.
	e cell width: 0.6; valign: #top; add: self widgetEmbeddedExample.  e newRow.
	e cell add: self widgetComposedExample.  e newRow.
	e cell add: self widgetPopupExample. 
	self style pageFrameWith: e title: 'Widget examples'
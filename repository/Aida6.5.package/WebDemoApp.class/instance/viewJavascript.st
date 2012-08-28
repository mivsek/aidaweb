views-javascript
viewJavascript
	| e |
	e := WebElement new.
	e cell addTextH1: 'Simple Javascript examples'. e newRow. e newRow.
	e cell addText: 'See the code in method #viewJavascript from WebDemoApp'. e newRow.
	e cell add: self jsShowAlertExample. e newRow.
	e cell add: self jsShowHideToggleExample. e newRow.
	e cell add: self jsShowWithMouseOverExample. e newRow. 
	self style pageFrameWith: e title: 'Javascript examples'
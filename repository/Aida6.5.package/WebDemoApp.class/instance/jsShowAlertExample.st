views-javascript
jsShowAlertExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example 1: onClick event on some text'. e addBreak.
	e add: 
		((WebText text: 'click on me to show alert!') onClick: 'alert(''This is an alert!'')'). 
	^e.
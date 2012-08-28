views-javascript
jsShowWithMouseOverExample
	| e element |
	e := WebElement new.
	e addTextH4: 'Example 3: show/hide an element with mouse over'.
	element := WebElement new addText: 'This element is now shown'; style: '{background-color: #ccc }'.
	element hide.  "hide from the start"
	e 
		add: ((WebText text: 'mouse over to show') 
			onMouseOverShow: element; onMouseOutHide: element); addSpace;
	 	add: element.
	^e
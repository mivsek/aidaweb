views-javascript
jsShowHideToggleExample
	| e element |
	e := WebElement new.
	e addTextH4: 'Example 2: show/hide an element with a click'.
	element := WebElement new addText: 'This element is now shown'; style: '{background-color: #ccc }'.
	element hide.  "hide from the start"
	e 
		add: ((WebText text: 'show') onClickShow: element); addSpace;
		add: ((WebText text: 'hide') onClickHide: element); addSpace;
		add: ((WebText text: 'toggle') onClickToggle: element); addSpace;
	 	add: element.
	^e
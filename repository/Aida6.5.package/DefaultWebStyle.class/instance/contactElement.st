layout
contactElement

	| element |
	element := WebElement new.
	element 
		addText: '<font face=helvetica size=-2>Send comments to: <br>'; 
		addText: '<b><a href="mailto:info@eranova.si">';
		addText: '<font face=helvetica size=-1>info@eranova.si</font></a></b></font>'.
	^element
layout
copyrightElement
	| element |
	element := WebElement new.
	element
		addLinkTo: 'http://www.eranova.si/' text: '<font face=helvetica size=-1>(C) Eranova d.o.o</font>'.
	^element
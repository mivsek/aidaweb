layout-joomla
joomlaFooterElement
	| e |
	e := WebElement new.
	e table width: 0.99; cellPadding: 0; cellSpacing: 0; 
		style: 'background-image: url(/img/bacFooterPng.png)'.
	e cell width: 12; addPng: #leftFooterPng.
	e newCell add: 
		(WebElement new align: #center; addTextSmall: '(c)  2007 Z^upnija Sv.Franc^is^ka Asis^kega'). 
	e newCell width: 12; addPng: #rightFooterPng. 
	^e
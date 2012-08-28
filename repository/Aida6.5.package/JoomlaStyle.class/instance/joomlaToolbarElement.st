layout-joomla
joomlaToolbarElement
	| e |
	e := WebElement new.
	e table width: 1; cellPadding: 0; cellSpacing: 0; 
		style: 'background-image: url(/img/topLinkBacPng.png)'.
	e cell width: 133; addJpeg: #leftTopLinkJpg.
	e newCell addNbSp.  "here add 'user3' "
	e newCell width: 11; addPng: #rightTopLinkPng. 
	^e
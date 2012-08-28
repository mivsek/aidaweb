layout-joomla
joomlaCenterWith: aWebElement
	| e |
	e := WebElement new.
	e table width: 1; cellPadding: 0; cellSpacing: 0.
	e cell width: 5; valign: #top; style: 'background-image: url(/img/leftPng.png); height: 664px'.
	e cell addPng: #topLeftPng.
	e newCell valign: #top; style: 'background-image: url(/img/topPng.png); background-repeat: repeat-x; background-position: top; height: 664px'.
	e cell add: aWebElement.
	e newCell width: 4; valign: #top; style: 'background-image: url(/img/rightPng.png); height: 664px'.
	e cell addPng: #topRightPng. 
	e newRow.
	e cell width: 5; addPng: #botLeftPng.
	e newCell style: 'background-image: url(/img/botPng.png)'; addPng: #botPng.
	e newCell width: 4; addPng: #botRightPng. 
	^e
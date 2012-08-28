layout-joomla
joomlaLeftElement
	| e |
	e := WebElement new.
	e table width: 1; cellSpacing: 0; cellPadding: 0.
	e cell class: #'bac_module'.
	e cell add: self menuElement.
	e newTable width: 1; cellSpacing: 0; cellPadding: 0.
	e cell class: #'bac_module'.
	e cell add: self leftBottomElement.
	^e
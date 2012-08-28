layout-joomla
joomlaHeaderElement
	| e |
	e := WebElement new.
	e table class: #logo2; width: 1; cellPadding: 0; cellSpacing: 0.
	e cell class: #logo; width: 133; valign: #bottom.
	e cell table width: 130; cellPadding: 0; cellSpacing: 0.
	e cell newRow; newRow.
	e newCell valign: #top.
	e newCell class: #logo3; width: 0.7; align: #right.
	e cell table width: 705; style: 'height:: 217px'; cellPadding: 0; cellSpacing: 0.
	e cell cell table width: 1; cellPadding: 0; cellSpacing: 0.
	e cell cell cell style: 'height: 25px'; addNbSp.
	e cell cell newCell width: 197; style: 'height: 25px'; addNbSp.
	e cell cell newCell width: 8; style: 'height: 25px'; addNbSp.
	e cell cell newRow.
	e cell cell cell style: 'height: 25px'; addNbSp.
	e cell cell newCell width: 197; style: 'height: 25px'; addNbSp. "here add 'user4' !" 
	e cell cell newCell width: 8; style: 'height: 25px'; addNbSp.
	e cell newCell valign: #top.
	e cell cell table width: 1; style: 'height: 163px'; cellPadding: 0; cellSpacing: 0.
	e cell cell cell width: 219; addNbSp.
	e cell cell newCell addNbSp.
	e cell cell newRow.
	e cell cell cell width: 219; addNbSp.
	e cell cell newCell width: 486; style: 'height: 66px'; addNbSp. "here add 'banner'"
	^e
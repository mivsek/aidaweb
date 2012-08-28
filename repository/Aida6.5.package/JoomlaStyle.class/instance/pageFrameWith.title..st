layout-general
pageFrameWith: aWebElement title: aTitleString
	"template name: mitra"
	| e |
	self app title: aTitleString. self htmlHeaderElements.
	e := WebElement new.
	e table width: 1 "100%"; cellPadding: 0; cellSpacing: 0.
	e cell add: self joomlaHeaderElement. e newRow.
	e cell add: self joomlaToolbarElement.  e newRow.
	e cell table width: 1; cellPadding: 0; cellSpacing: 0.
	e cell cell width: 4. 
	e cell newCell valign: #top; width: 201; add: self joomlaLeftElement.
	e cell newCell valign: #top; add: (self joomlaCenterWith: aWebElement).
	e cell newCell valign: #top; width: 201 "5"; add: self joomlaRightElement.
	e cell add: (WebElement newDiv align: #center; 
		add: self joomlaFooterElement; yourself).
	^self app add: e; yourself
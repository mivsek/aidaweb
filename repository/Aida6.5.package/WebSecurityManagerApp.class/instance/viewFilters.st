printing
viewFilters
	| e |
	self title: #en->'Access filters'.
	e := WebElement new.
	e add: self hierarchyLinksElement.
	e addTextH1: self title. e addBreak.
	e add: self tabsElement; addBreak.
	e add: self filtersElement.
	self style pageFrameWith: e title: self title
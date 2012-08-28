views
viewControlFlow
	| e |
	e := WebElement new.
	e cell addTextH1: 'Tree-like control flow examples'. e newRow. e newRow.
	e add: self flowConfirmDeleteExample.
	self style pageFrameWith: e title: 'Control flow examples'
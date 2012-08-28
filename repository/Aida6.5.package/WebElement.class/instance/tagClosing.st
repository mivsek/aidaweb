private-streaming
tagClosing
	" /> for XHTML, > otherwise"
	| page |
	page := self webPage.
	page isNil ifTrue: [page := self app context page]. "as a last resort"
	^(page notNil and: [page isXHTML])
		ifTrue: ['/>']
		ifFalse: ['>']
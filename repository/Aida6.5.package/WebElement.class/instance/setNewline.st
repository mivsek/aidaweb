private-identation
setNewline
	"we are no longer at start of line"
	| page |
	page := self webPage.
	page notNil ifTrue: [page setNewline].
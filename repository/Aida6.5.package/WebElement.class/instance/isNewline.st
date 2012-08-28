private-identation
isNewline
	"are we at start of new line?"
	| page |
	page := self webPage.
	^page notNil ifTrue: [page isNewline] ifFalse: [false]
private-identation
identDepth
	"how idented we are"
	| page |
	page := self webPage.
	^page notNil ifTrue: [page identDepth] ifFalse: [0].
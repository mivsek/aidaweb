private-identation
identDepth: aNumber
	"how idented we are"
	| page |
	page := self webPage.
	^page isNil ifTrue: [0] ifFalse: [page identDepth: aNumber]
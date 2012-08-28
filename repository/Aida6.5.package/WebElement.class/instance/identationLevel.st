private-identation
identationLevel	
	"How much we need to ident. Top element (web page) has level 0"
	| page |
	self isWebPage ifTrue: [^0].
	^self parent notNil
		ifTrue: 
			[page := self webPage. page isNil ifTrue: [^0].
			self shouldIdent 
				ifTrue: [page identationLevel + 1] 
				ifFalse: [page identationLevel]]
		ifFalse: [0]
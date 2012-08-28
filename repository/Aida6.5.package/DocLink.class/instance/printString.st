private
printString
	^'a Doclink
		title:  ', (self title notNil ifTrue: [self title] ifFalse: ['']), '
		url: ', (self url notNil ifTrue: [self url] ifFalse: ['']), '
		object: ', self object printString
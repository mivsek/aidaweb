statistics
createdDateText
	"date of  server creation"
	^self createdDate notNil 
		ifTrue: [self createdDate shorterPrintSloString] 
		ifFalse: ['']
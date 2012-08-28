statistics
createdDate
	"date of  server creation"
	^self createdTimestamp notNil 
		ifTrue: [self createdTimestamp asDate] 
		ifFalse: [nil]
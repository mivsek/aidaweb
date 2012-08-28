statistics
lastRequestTimestampText
	"time and date of last web request"
	^self lastRequestTimestamp notNil 
		ifTrue: [self lastRequestTimestamp asDate shorterPrintSloString, ' ',
			self lastRequestTimestamp asTime printSloString] 
		ifFalse: ['']
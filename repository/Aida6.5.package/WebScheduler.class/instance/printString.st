private
printString
	^'aScheduler on site: ', (self site notNil ifTrue: [self site name] ifFalse: [''])
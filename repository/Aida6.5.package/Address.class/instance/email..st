accessing
email: aString 
	self emails size > 0 ifTrue: [^self emails at: 1 put: aString].
	^self emails add: aString
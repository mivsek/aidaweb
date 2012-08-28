accessing
header: aNumber
	
	"Assigns this WebText as a header text. Parameter can be 1 .. 5. If this parameter is nil then WebText is not a header"

	aNumber < 1 
		ifTrue: [header:= 1.   ]
		ifFalse:
			[aNumber > 5 ifTrue: [header := 5.] ifFalse: [header := aNumber.]].
	^self
accessing
size: aNumber
	
	"larger or smaller text for aNumber factor. Range -7..+7"

	aNumber < -7 
		ifTrue: [size := -7.  ]
		ifFalse:
			[aNumber > 7 ifTrue: [size := 7.  ] ifFalse: [size := aNumber.]].
	^self
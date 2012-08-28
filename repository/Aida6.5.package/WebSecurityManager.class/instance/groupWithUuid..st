group management
groupWithUuid: aString
	" find and return a group with specified uuid. Return nil if not found" 
	^self groups detect: [:each | each uuid = aString] ifNone: [nil]
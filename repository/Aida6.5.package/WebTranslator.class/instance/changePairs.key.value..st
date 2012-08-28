private-classes-changes
changePairs: aPairsCollection key: aKeyString value: aString
	"change (or add new pair) a value of a pair (an association) on specified key"
	| pair |
	pair := aPairsCollection 
		detect: [:assoc | assoc key = aKeyString]
		ifNone: [aPairsCollection add: (aKeyString -> '')].
	pair value: aString.
	^aPairsCollection
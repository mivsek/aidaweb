accessing
fieldNamed: aString
	"search down to subforms too"
	^self fields at: aString ifAbsent: 
		[self subforms do: [:form || field | 
			field := form fieldNamed: aString.
			field notNil ifTrue: [^field] ].
		nil].
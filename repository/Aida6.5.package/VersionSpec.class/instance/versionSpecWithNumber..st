accessing
versionSpecWithNumber: aString
	"find spec  with that version number"
	self number = aString ifTrue: [^self].
	^self olderVersionSpecs detect: [:each | each number = aString] ifNone: 
		[^self newerVersionSpecs detect: [:each | each number = aString] ifNone: [nil] ].
accessing
orgUnitWithName: aString
	"search for this org.unit through hierarchy starting from self"
	| found |
	self name = aString ifTrue: [^self].
	self units do: [:each | each name = aString ifTrue: [^each] ].
	self units do: [:each | 
		found := each orgUnitWithName: aString. found notNil ifTrue: [^found] ].
	^nil
accessing
orgUnitWithUuid: aString
	"search for this org.unit through hierarchy starting from self"
	| found |
	self uuid = aString ifTrue: [^self].
	self units do: [:each | each uuid = aString ifTrue: [^each] ].
	self units do: [:each | found := each orgUnitWithUuid: aString. found notNil ifTrue: [^found] ].
	^nil
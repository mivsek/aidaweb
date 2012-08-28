private-accessing
summaryValue
	"for adding to a table"
	self summary isNil ifTrue: [^''].
	(self summary isKindOf: Number) ifTrue: [^self summary printDotString].
	^self summary "as text"
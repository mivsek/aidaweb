accessing
last: aNumber
	"find last number of values, starting from today and back in past. Most recent first!"
	| collection |
	collection := OrderedCollection new.
	1 to: aNumber do: [:inx | collection add: (self at: Date today - inx + 1)].
	^collection
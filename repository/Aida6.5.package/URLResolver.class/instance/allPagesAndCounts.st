request counting
allPagesAndCounts

	"return total counts for all objects that have counters, most counted first"

	| collection |
	collection := OrderedCollection new.
	self counters keysAndValuesDo: [:object :counter |
		collection add: (Array
			with: object
			with: counter total)].
	^SortedCollection
		withAll: collection
		sortBlock: [:a :b | (a at: 2) > (b at: 2)]

"URLResolver default allPagesAndCounts"
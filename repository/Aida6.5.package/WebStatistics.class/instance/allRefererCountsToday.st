referers
allRefererCountsToday
	"return a collection of today referers and their total counts, most counted first"
	| collection |
	collection := OrderedCollection new.
	self referers keysAndValuesDo: [:referer :counter |  
		collection add: (Array 
			with: referer
			with: counter today)].
	^SortedCollection
		withAll: (collection select: [:each | each value last > 0])
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].

"WebStatistics default allReferersAndCounts"
referers
allRefererCountsWeekly
	"return a collection of current week referers and their total counts, most counted first"
	| collection |
	collection := OrderedCollection new.
	self referers keysAndValuesDo: [:referer :counter |  
		collection add: (Array 
			with: referer
			with: counter weekly)].
	^SortedCollection
		withAll: (collection select: [:each | each value last > 0])
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].

"WebStatistics default allReferersAndCounts"
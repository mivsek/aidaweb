referers
allRefererCounts
	"return a collection of all referers and their total counts, most counted first"
	| collection |
	collection := OrderedCollection new.
	self referers keysAndValuesDo: [:referer :counter |  
		collection add: (Array 
			with: referer
			with: counter total)].
	^SortedCollection
		withAll: collection
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].

"WebStatistics default allRefererCounts size"
popular words
allPopularWordsAndCounts
	"return a collection of words and their total counts, most popular first"
	| collection |
	collection := OrderedCollection new.
	self popularWords keysAndValuesDo: [:word :counter |  
		collection add: (Array with: word with: counter total)].
	^SortedCollection
		withAll: collection
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].
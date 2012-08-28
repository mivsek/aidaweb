accessing
allWordsAndWeights
	"return sorted collection of all words and sum of weights, biggeest weight first"
	| collection weight |
	collection := OrderedCollection new.
	self index keysDo: [:halfWord |
		(self index at: halfWord) keysDo: [:restWord |
			weight := ((self index at: halfWord) at: restWord) inject: 0 into: 
				[:sum :thirdDictWeight | sum + (thirdDictWeight)].
			collection add: (Array with: halfWord, restWord with: weight) ] ].
	^SortedCollection 
		withAll: collection
		sortBlock: [:a :b | (a at: 2) > (b at: 2)].

" WebIndex default allWordsAndWeights "
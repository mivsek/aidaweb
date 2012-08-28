private
runningHistoryCollection
	^self timestamps at: #RunningHistory ifAbsentPut: [OrderedCollection new].
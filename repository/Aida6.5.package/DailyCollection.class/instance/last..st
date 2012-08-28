accessing
last: aNumber
	"find last number of values, starting from today and back in past. Most recent first!"
	| collection dayColl |
	collection := OrderedCollection new.
	dayColl := SortedCollection withAll: self days keys sortBlock: [:a :b | a > b].
	dayColl do: [:day || coll |
		coll := (self days at: day) copy reverse.
		collection addAll: (coll copyFrom: 1 to: ((aNumber - collection size) min: coll size) ).
		collection size = aNumber ifTrue: [^collection] ].
	^collection

"LogisticSystem default owner events size last: 1000"
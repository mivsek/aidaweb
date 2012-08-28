private-accessing
all
	| dayCol |
	dayCol := SortedCollection
		withAll: self days keys
		sortBlock: [:a :b | a > b].
	^dayCol inject: OrderedCollection new into: [:col :each | col addAll: (self days at: each); yourself ].
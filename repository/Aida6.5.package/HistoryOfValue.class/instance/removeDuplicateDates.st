private-adding-removing
removeDuplicateDates

	"maintenance - remove all duplicate entries with same dates. Live last one"

	| date index |
	self hasDuplicateDates ifTrue: 
		[date := 0. index := nil.
		1 to: self dates size do: 
			[:inx | 
				(self dates at: inx) = date ifTrue: [index := inx].
				date := self dates at: inx].
		index notNil 
			ifTrue: 
				[self removeIndex: index-1.
				self removeDuplicateDates].
		 ].
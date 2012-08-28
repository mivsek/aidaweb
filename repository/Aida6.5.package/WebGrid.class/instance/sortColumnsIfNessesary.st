private-building
sortColumnsIfNessesary
	| column sortBlock | 
	 self sortColumn isNil ifTrue: [^nil].
	column := self columns at: self sortColumn.
	sortBlock := (self sortOrder = #ascending)
		ifTrue: [ [:a :b | (a perform: column aspect) < (b perform: column aspect)] ]
		ifFalse: [ [:a :b | (a perform: column aspect) > (b perform: column aspect)] ].
	self collection: (SortedCollection withAll: self collection sortBlock: sortBlock).
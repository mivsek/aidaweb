private-building
buildTableHeader
	self columns do: [:each | 
		self cell setHeader.
		each align notNil ifTrue: [self cell align: each align].
		each name notNil ifTrue: [self cell add: (self sortLinkColumn: each)].
		each isSortedAscending ifTrue: [self cell addGif: #arrowOrangeUpGif].
		each isSortedDescending ifTrue: [self cell addGif: #arrowOrangeDownGif].
		each ~= self columns last ifTrue: [self newCell] ].
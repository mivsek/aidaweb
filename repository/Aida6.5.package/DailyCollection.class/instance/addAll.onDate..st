adding-removing
addAll: aCollection onDate: aDate

	self existCheckDate: aDate.
	^aCollection do: [:each | 	self add: each onDate: aDate].
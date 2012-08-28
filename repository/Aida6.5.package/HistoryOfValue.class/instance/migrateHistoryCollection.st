private-history arrays
migrateHistoryCollection

	"migrate from historyCollection to bunch of collections. Remove duplicates"

	| date |
	date := nil.
	self initialize.
	self historyCollection reverseDo: [:array |
		date = (self dateFromArray: array)
			ifFalse: 
				[self 
					value: (self valueFromArray: array)
					dated: (self dateFromArray: array)
					author: ('')
					comment: ('').
				date := self dateFromArray: array] ].


"
Janko := History selectFromOdb select: [:h | h historyCollection size > 10].
(Janko at: 3) migrateHistoryCollection
Janko do: [:each | each migrateHistoryCollection].
Janko  select: [:h | h dates size > 3].
"
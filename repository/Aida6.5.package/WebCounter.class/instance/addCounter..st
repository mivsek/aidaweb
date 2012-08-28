adding
addCounter: aWebCounter
	"add counts from specified counter"
	aWebCounter year = self year ifTrue: 
		[self addArray: aWebCounter dailyCounts to: self dailyCounts].
	self addArray: aWebCounter hourlyCounts to: self hourlyCounts.
	self total: self total + aWebCounter total.
	aWebCounter yearlyHistory keysAndValuesDo: [:yr :array |
		self addArray: array to: (self yearlyHistory at: yr ifAbsentPut: [Array new: 366 withAll: 0]) ].

"WebCounter new addCounter: WebCounter new"
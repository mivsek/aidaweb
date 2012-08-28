private-building
buildTableRows
	| inx objects pageLength |
	self collection notEmpty ifTrue: [self newRow].
	objects := self filtered.
	self resetSummary. inx := 0. objects do: [:object | inx := inx + 1. "summary in advance!"
		self columns do: [:column | self summaryForColumn: column index: inx object: object]].
	inx := 1. pageLength := self hasPages ifTrue: [self rowsOnPage] ifFalse: [objects size]. 
	(self page-1) * pageLength > objects size ifTrue: [self page: 1]. 
	objects := objects 
		copyFrom: ((self page-1) * pageLength)+1 to: (self page * pageLength min: objects size).
	objects do: [:object |
		self setRowAttributesFor: self row object: object.
		self columns do: [:column |
			(inx = 1 and: [column width notNil]) ifTrue: [self cell width: column width].
			self printColumn: column index: inx object: object in: self cell.
			column ~= self columns last ifTrue: [self newCell] ].
		inx ~= objects size ifTrue: [self newRow].
		inx := inx + 1 ]
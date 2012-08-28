private-building
buildTableSummaryRow
	self newRow. self row class: #summary.
	self columns do: [:each | 
		each align notNil ifTrue: [self cell align: each align].
		each name notNil ifTrue: [self cell addText: each summaryValue].
		each ~= self columns last ifTrue: [self newCell] ].
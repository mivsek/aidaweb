private-building
buildTableFilterRow
	| field |
	self newRow.
	self columns do: [:each | 
		each align notNil ifTrue: [self cell align: each align].
		each filter notNil ifTrue: 
			[field := WebDelayedField aspect: #filter for: each size: 10.
			each filterWidth notNil ifTrue: [field size: each filterWidth].
			(self wasFilterChangedFor: each on: field) ifTrue: [field focus].
			field onChangePostAndUpdate: self.
			field blockEnterKey.
			self cell add: field].
		each ~= self columns last ifTrue: [self newCell] ].
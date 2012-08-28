private-fields
streamedFieldSet
	^self fields at: #streamedFields ifAbsent: [self initStreamedFieldSet].
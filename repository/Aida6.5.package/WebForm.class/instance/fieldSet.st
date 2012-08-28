private-fields
fieldSet
	^self fields at: #set ifAbsent: [self initFieldSet].
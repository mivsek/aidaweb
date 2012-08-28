private-building
canFilterObject: anObject onColumns: aColumnsToFilter
	aColumnsToFilter do: [:column || value |
		column aspect notNil ifTrue: 
			[value := anObject perform: column aspect].
		column addBlock notNil ifTrue:   "to filter addBlocks too!"
			[value := (column addBlock value: anObject) asString].
		value notNil ifTrue: 
			[value := WebFormElement autoConvertToString: value.
			value notNil ifTrue:
				[((column filter, '*') match: value) ifFalse: [^false]]  ] ] .
	^true
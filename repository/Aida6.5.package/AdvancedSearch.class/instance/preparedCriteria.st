private
preparedCriteria
	"just search fields, which are not empty"
	| dict |
	dict := Dictionary new.
	self criteria keysAndValuesDo: 
		[:key :value | 
			value trimBlanks notEmpty ifTrue:
				[(self isExactMatchRequested: value)
					ifTrue: [dict at: key put: (self withoutQuotation: value trimBlanks)]
					ifFalse: [dict at: key put: (value, '*')] ] ].
	^dict
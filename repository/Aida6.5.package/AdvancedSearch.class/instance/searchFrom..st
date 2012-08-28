search
searchFrom: aCollection
	| preparedCriteria |
	preparedCriteria := self preparedCriteria.
	results := aCollection select: [:each | self object: each match: preparedCriteria].
	^self results
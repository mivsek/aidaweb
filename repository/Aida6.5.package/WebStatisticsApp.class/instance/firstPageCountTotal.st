views-elements
firstPageCountTotal
	| countedObject |
	countedObject := self firstPageObject.
	countedObject isNil ifTrue: [^0].
	^(self site urlResolver counterFor: countedObject) total.
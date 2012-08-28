private
alignCriteria: aCriteriaDict aspect: aSymbol with: anObject
	"adjust type of search field with those in object's aspect"
	| objValue |
	objValue := anObject perform: aSymbol.
	(objValue isKindOf: Number) ifTrue: 
		[aCriteriaDict at: aSymbol put: (aCriteriaDict at: aSymbol) asNumber]
private-testing
hasFilters
	"any column has a filter"
	^self columns contains: [:each | each filter notNil].
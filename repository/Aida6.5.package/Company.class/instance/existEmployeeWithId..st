testing
existEmployeeWithId: aString
	^self allEmployees contains: [:each | each id = aString].
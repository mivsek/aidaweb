accessing
employeeNamed: aString
	^self allEmployees detect: [:each | aString = each name] ifNone: [nil]
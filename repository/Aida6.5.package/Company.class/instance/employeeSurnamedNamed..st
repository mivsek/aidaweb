accessing
employeeSurnamedNamed: aString
	^self allEmployees detect: [:each | aString = each surnameName] ifNone: [nil]
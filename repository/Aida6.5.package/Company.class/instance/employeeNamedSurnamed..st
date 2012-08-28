accessing
employeeNamedSurnamed: aString
	^self allEmployees detect: [:each | aString = each nameSurname] ifNone: [nil]
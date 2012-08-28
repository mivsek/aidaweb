roles-specific
searchEmployeesWithSurnameName: aString
	| string nm |
	string := aString asLowercase, '*'. 
	^self allEmployees select: [:each | 
		nm := each surnameName asLowercase.
		(string match: nm)].
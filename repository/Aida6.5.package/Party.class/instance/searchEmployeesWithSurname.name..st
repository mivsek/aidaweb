roles-specific
searchEmployeesWithSurname: aSurname name: aName
	| surname nme |
	surname := aSurname asLowercase, '*'. nme := aName asLowercase, '*'.
	^self allEmployees select: [:each | 
		(surname match: each surname asLowercase) and: [nme match: each name asLowercase] ]
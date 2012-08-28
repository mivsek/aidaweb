testing
existEmployeeWithName: aNameString surname: aSurnameString
	^self allEmployees contains: [:each | 
		(each name = aNameString) and: [each surname = aSurnameString]].
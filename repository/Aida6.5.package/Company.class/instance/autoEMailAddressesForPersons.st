import-export
autoEMailAddressesForPersons
	"Repository default company autoEMailAddressesForPersons"
	self allEmployees do: [:person |
		person email isValidEMailAddress ifFalse:  	
			[person email: (person name asSloveneWithoutCircumflexes asLowercase , '.',
			person surname asSloveneWithoutCircumflexes asLowercase, 
			'@salus.si')] ]
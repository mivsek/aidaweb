accessing
allPersonsWithJobRoles
	"collect all persons holding job roles as part of that role group"
	^self allRoles inject: Set new into: [:set :role | set addAll: role allPersons; yourself].
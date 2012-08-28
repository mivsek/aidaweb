job roles
allPersonsWithJobRoles
	"collect all persons holding job roles in this org unit"
	^self allJobRoles inject: Set new into: [:set :role | set addAll: role allPersons; yourself].
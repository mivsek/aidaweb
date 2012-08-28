accessing
allPersons
	"both individual, from job roles and from org.units"
	| persons |
	persons := self onlyPersons asSet.
	persons := self allOrgUnits inject: persons into: [:set :each | set addAll: each allMembers; yourself].
	persons addAll: self allPersonsFromJobRoles.
	persons addAll: self allPersonsFromRoleGroups.
	^persons asOrderedCollection
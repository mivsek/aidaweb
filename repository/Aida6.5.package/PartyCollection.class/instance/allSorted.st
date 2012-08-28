accessing
allSorted
	"org.unitss first, then role groups, roles, persons"
	| all |
	all := (SortedCollection withAll: self allOrgUnits sortBlock: [:a :b | a name < b name]) 
		asOrderedCollection.
	all addAll: (SortedCollection withAll: self allRoleGroups sortBlock: [:a :b | a name < b name]).
	all addAll: (SortedCollection withAll: self allJobRoles sortBlock: [:a :b | a name < b name]).
	all addAll: (SortedCollection withAll: self onlyPersons 
		sortBlock: [:a :b | a surnameName < b surnameName]).
	^all
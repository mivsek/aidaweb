accessing
allPersonsFromJobRoles
	| jobRoles  |
	jobRoles := self allJobRoles asSet.
	^self allParentPersons select: [:each |
		each jobRole notNil and: [jobRoles includes: each jobRole parentRole] ].

"	^self allJobRoles inject: Set new into: [:set :each | set addAll: each allPersons; yourself]."
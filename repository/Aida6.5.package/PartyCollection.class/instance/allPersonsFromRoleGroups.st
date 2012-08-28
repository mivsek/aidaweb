accessing
allPersonsFromRoleGroups
	| jobRoles |
	jobRoles := self allRoleGroups inject: Set new into: [:set :each | set addAll: each allRoles; yourself].
	^self allParentPersons select: [:each |
		each jobRole notNil and: [jobRoles includes: each jobRole parentRole] ]
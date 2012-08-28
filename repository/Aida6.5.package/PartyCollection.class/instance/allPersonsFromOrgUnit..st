accessing
allPersonsFromOrgUnit: anOrgUnit
	| members |
	members := anOrgUnit allMembers asSet.
	^self allPersons select: [:each | members includes: each]
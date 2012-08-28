roles-basic
discontinueAllRolesTo: aParty
	(self roles select: [:role | role relatedParty == aParty])
		do: [:each | self discontinueRole: each].
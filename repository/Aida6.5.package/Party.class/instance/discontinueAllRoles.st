roles-basic
discontinueAllRoles
	self roles copy do: [:each | self discontinueRole: each].
	self relatedPartyRoles copy do: [:each | self discontinueRole: each]
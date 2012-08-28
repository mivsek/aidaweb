adding-removing
removeEmployee: aPerson
	aPerson noMoreEmployeeOf: self.
	self allOrgUnits do: [:each | each removeMember: aPerson].
	aPerson removeJobRole
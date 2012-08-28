private
cleanupEmployeeToOrgUnitsConnections
	"(AIDASite named: 'biart') repository company cleanupEmployeeToOrgUnitsConnections"
	| set employees |
	set := self allEmployees asSet.
	employees := self allOrgUnits "collect them through orgunits hierarchy"
		inject: Set new into: [:sett :each | sett addAll: each allMembers; yourself].
	(employees reject: [:each | set includes: each]) "those dangling"
		do: [:each | each becomeFormerEmployeeOf: self. each removeJobRole.
			self allOrgUnits do: [:unit | unit removeMember: each] ].
	employees := self allOrgUnits inject: Set new into: [:sett :each | 
		sett addAll: each allPersonsWithJobRoles; yourself].
	(employees reject: [:each | set includes: each])
		do: [: each | each removeJobRole].
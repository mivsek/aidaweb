import-export
connectEmployeesToOrgUnits
	"salus"	
	"preimenuj zacasno org.enote brez sumnikov! "
	"Repository default company connectEmployeesToOrgUnits"
	| orgUnit |
	self allEmployees do: [:each |
		orgUnit := self salusOrgUnitFor: each.
		orgUnit notNil ifTrue: [each allOrgUnits isEmpty ifTrue: [each becomeMemberOf: orgUnit] ]]
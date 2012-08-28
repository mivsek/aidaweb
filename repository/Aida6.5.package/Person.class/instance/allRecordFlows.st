record flows
allRecordFlows
	"all record flows, concerned to that person"
	| flows set |
	flows := OrderedCollection new.
	self repository root allProcesses do: [:process | 
		process allTasks do: [:task | flows addAll: task allRecordFlows] ].
	set := Set new. self jobRole isNil ifTrue: [^#()].
	set add: self jobRole parentRole.
	set addAll: (self repository company roleGroupsIncludeRole: self jobRole parentRole).
	^flows select: [:flow | set includes: flow destination]
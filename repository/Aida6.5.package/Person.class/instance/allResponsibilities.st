responsibilities
allResponsibilities
	"search for all responsibilities through document repository, specially processes"
	| resps set |
	resps := OrderedCollection new. self repository isNil ifTrue: [^resps].
	self repository root allProcesses do: [:process |
		process allTasks do: [:task | resps addAll: task responsible] ].
	set := Set new. self jobRole isNil ifTrue: [^#()].
	set add: self jobRole parentRole.
	set addAll: (self repository company roleGroupsIncludeRole: self jobRole parentRole).
	^resps select: [:resp | set includes: resp role]
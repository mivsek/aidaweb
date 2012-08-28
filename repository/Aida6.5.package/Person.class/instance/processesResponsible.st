responsibilities
processesResponsible
	"all processes where this person have some kind of responsibility"
	| processes set |
	processes := self allResponsibilities collect: [:each | each process].
	set := Set new: processes size. "remove duplicates, preserve order"
	^processes select: [:each || exist | exist := set includes: each. set add: each. exist not]
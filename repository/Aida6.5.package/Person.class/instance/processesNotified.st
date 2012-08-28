record flows
processesNotified
	"all processes where on which this person is notified"
	| processes set |
	processes := self allRecordFlows collect: [:each | each process].
	set := Set new: processes size. "remove duplicates, preserve order"
	^processes select: [:each || exist | exist := set includes: each. set add: each. exist not]
record flows
tasksNotified
	"all process tasks  on which this person is notified"
	| tasks set |
	tasks := self allRecordFlows collect: [:each | each task].
	set := Set new: tasks size. "remove duplicates, preserve order"
	^tasks select: [:each || exist | exist := set includes: each. set add: each. exist not]
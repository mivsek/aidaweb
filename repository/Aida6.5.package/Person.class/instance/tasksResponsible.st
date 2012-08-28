responsibilities
tasksResponsible
	"all process tasks where this person have some kind of responsibility"
	| tasks set |
	tasks := (self allResponsibilities select: [:each | each isTaskResponsibility]) 
		collect: [:each | each task].
	set := Set new: tasks size. "remove duplicates, preserve order"
	^tasks select: [:each || exist | exist := set includes: each. set add: each. exist not]
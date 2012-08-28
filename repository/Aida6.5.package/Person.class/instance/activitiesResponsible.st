responsibilities
activitiesResponsible
	"all process activities where this person have some kind of responsibility"
	| activities set |
	activities := (self allResponsibilities select: [:each | each isTaskResponsibility])
		collect: [:each | each task activity].
	set := Set new: activities size. "remove duplicates, preserve order"
	^activities select: [:each || exist | exist := set includes: each. set add: each. exist not]
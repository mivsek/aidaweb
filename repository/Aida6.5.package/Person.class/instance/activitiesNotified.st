record flows
activitiesNotified
	"all process activities on which this person is notified"
	| activities set |
	activities := self allRecordFlows collect: [:each | each activity].
	set := Set new: activities size. "remove duplicates, preserve order"
	^activities select: [:each || exist | exist := set includes: each. set add: each. exist not]
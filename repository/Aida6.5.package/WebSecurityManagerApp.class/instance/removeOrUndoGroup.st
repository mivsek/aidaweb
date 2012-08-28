actions
removeOrUndoGroup
	"remove checked, undo/add back unchecked again"
	| currentGroups toRemove toUndo |
	currentGroups := self observee allGroups asSet.
	toRemove := currentGroups select: [:each | groupsToRemove includes: each].
	toUndo := (self "inital" groups reject: [:each | currentGroups includes: each]) "already removed"
				reject: [:each | groupsToRemove includes: each]. "to get unchecked ones"
	toRemove do: [:each | observee removeGroup: each].
	toUndo do: [:each | self observee addGroup: each].
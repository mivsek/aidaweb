actions
removeOrUndoUser
	"remove checked, undo/add back unchecked again"
	| currentUsers toRemove toUndo |
	currentUsers := self observee allUsers asSet.
	toRemove := currentUsers select: [:each | usersToRemove includes: each].
	toUndo := (self "inital" users reject: [:each | currentUsers includes: each]) "already removed"
				reject: [:each | usersToRemove includes: each]. "to get unchecked ones"
	toRemove do: [:each | 
		each otherAt: #WasInGroups put: each groups.
		self observee removeUser: each].
	toUndo do: [:each | 
		self observee addUser: each.
		(each otherAt: #WasInGroups) do: [:grp | grp addUser: each] ]. "reconstruct group membership"
actions
actionAddGroup
	self group ~= '' ifTrue: [self observee addGroup: self group].
	self newView: #groups.
testing
testGroups
"	| group |
	self assert: (mgr groups size = 2). ""AllUsers and Admins""
	group := WebUserGroup new name: 'test'.
	self deny: (mgr existGroupNamed: 'test').
	mgr addGroup: group.
	self assert: (mgr existGroupNamed: 'test').
	self assert: (mgr groups size = 3). 
	mgr addGroupNamed: 'test'. ""duplicate test""
	self assert: (mgr groups size = 3).
	mgr removeGroupNamed: 'test'.
	self assert: (mgr groups size = 2).
"
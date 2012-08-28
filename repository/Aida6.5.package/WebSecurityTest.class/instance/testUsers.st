testing
testUsers
"	| user |
	self assert: (mgr users size = 1). ""only admin user""
	user := WebUser new username: 'test'; password: 'test'; email: 'a@a.si'.
	self deny: (mgr existUserNamed: 'test' withPassword: 'test').
	mgr addUser: user.
	self assert: (mgr existUserNamed: 'test' withPassword: 'test').
	self assert: (mgr users size = 2). 
	mgr addUser: user. ""duplicate test""
	self assert: (mgr users size = 2).
	mgr removeUserNamed: 'test' withPassword: 'test'.
	self assert: (mgr users size = 1).
"
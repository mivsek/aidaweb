testing
testInitialize
"	self assert: mgr users size = 1.
	self assert: mgr groups size = 2.  ""Admininstrators and AllUsers""
	self assert: (mgr existUserNamed: 'admin' withPassword: 'password').
	self assert: (mgr existGroupNamed: 'Administrators').
	self assert: (mgr existGroupNamed: 'AllUsers').
"
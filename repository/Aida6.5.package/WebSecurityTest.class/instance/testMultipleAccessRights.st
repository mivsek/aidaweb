testing
testMultipleAccessRights
"	| object right1 right2 user |
	right1 := #AllowThat. right2 := #AllowThatToo.
	object := #JustSomething.
	user := mgr adminUser.
	self deny: (mgr has: user rightTo: right1 on: object).
	self deny: (mgr has: user rightTo: right2 on: object).
	mgr setAccessRights: (Array with: right1 with: right2) for: mgr adminUser on: object.
	self assert: (mgr has:user rightTo: right1 on: object).
	self assert: (mgr has: user rightTo: right2 on: object).
	mgr removeAccessRights: (Array with: right1 with: right2) for: mgr adminUser on: object.
	self deny: (mgr has: user rightTo: right1 on: object).
	self deny: (mgr has: user rightTo: right2 on: object).
"
testing
testSimpleAccessRight
"	| right object user |
	right := #AllowThat.
	object := #JustSomething.
	user := mgr adminUser.
	self deny: (mgr has: user rightTo: right on: object).
	mgr setAccessRights: right for: mgr adminUser on: object.
	self assert: (mgr has:user rightTo: right on: object).
	mgr removeAccessRights: right for: mgr adminUser on: object.
	self deny: (mgr has: user rightTo: right on: object).
"
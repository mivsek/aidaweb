testing
testSetUp
"	self assert: app notNil.
	self assert: app observee == site admin.
	self assert: app session == session.
	self assert: (session webAppFor: site admin) == app
"
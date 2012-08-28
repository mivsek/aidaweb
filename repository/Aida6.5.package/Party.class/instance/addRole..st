private
addRole: aRole
	(self roles includes: aRole) ifTrue: [^nil].
	self roles add: aRole.
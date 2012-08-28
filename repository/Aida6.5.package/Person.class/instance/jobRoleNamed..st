roles - specific
jobRoleNamed: aString
	"org.unit should have this job role already defined!"
	| parentRole |
	self organizationUnit isNil ifTrue: [^nil].
	parentRole := self organizationUnit jobRoleNamed: aString. parentRole isNil ifTrue: [^nil].
	self jobRole notNil ifTrue: [self removeJobRole].
	self newRole: parentRole newChildRole relatedTo: self company
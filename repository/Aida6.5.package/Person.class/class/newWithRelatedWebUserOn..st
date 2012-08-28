instance creation
newWithRelatedWebUserOn: anAIDASite
	| instance |
	instance := super new.
	instance webUser: (anAIDASite webUserClass new person: instance; parent: anAIDASite securityManager).
	^instance
user management
addPerson: aPerson
	"make parallel WebUser, cross-connect both and put into Registered group"
	"by default username and password are aPerson surname!"
	| user |
	aPerson asWebUser notNil ifTrue: [^self error: 'already added!'].
	user := self site webUserClass new.
	user username: aPerson surname.
	user password: aPerson surname.
	(self addRegisteredUser: user) notNil "no duplicates in username"
		ifTrue: [ aPerson webUser: user. user person: aPerson]
		ifFalse: [^nil].
	^aPerson
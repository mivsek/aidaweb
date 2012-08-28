instance creation
new
	"prepare a CAPTCHA with random string"
	| session |
	session := self firstSessionFromStack. "on which we are building this captcha"
	^super new 
		site: (session notNil ifTrue: [session site] ifFalse: [nil]);
		setRandomText
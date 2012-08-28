actions
checkAndSetResult
	"check userna and password"
	(self site securityManager existUserNamed: self username withPassword: self password)
		ifTrue: [self result: 'Correct!']
		ifFalse: [self result: 'Wrong!']
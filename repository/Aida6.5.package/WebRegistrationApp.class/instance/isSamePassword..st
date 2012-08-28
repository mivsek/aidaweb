validation
isSamePassword: aString
	^(self context form bufferedValueAspect: #password for: self newUser) = aString
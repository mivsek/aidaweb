private
users
	users isNil ifTrue: [self initUsers]. 
	^users
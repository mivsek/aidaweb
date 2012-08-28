private
userValues
	"return a dictionary with user defined values, which scope is this session. Usr can use it for such 
	things as global navigation, remembering views etc."
	userValues isNil ifTrue: [self initUserValues].
	^userValues
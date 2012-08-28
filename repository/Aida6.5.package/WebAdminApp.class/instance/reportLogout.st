private
reportLogout
	Transcript cr; show: 'logout: ', self session user nameSurname asSloveneWithoutCircumflexes, 
	' on ', self site name,
	' at ', 
 	Date today dayOfMonth printString, '.',
	Date today monthIndex printString, ' ',
	Time now hours printString, ':', 
	Time now minutes printString,
	' from ', (self session lastRequest peer notNil ifTrue: [self session lastRequest peer] ifFalse: [''])
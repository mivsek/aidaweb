private
reportLoginError: aString
	self showError: aString. "to show in red on the page"
	Transcript cr; show: '*** login error: ', self username, ' ', aString, 
	' on ', self site name,
	' at ', 
 	Date today dayOfMonth printString, '.',
	Date today monthIndex printString, ' ',
	Time now hours printString, ':', 
	Time now minutes printString,
	' from ', (self session lastRequest peer notNil ifTrue: [self session lastRequest peer] ifFalse: [''])
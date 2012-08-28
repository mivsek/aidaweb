private
reportLoginWarning: aString
	"just on transcript, not to the user!"
	Transcript cr; show: '*** login warning: ', self username, ' ', aString, 
	' on ', self site name,
	' at ', 
 	Date today dayOfMonth printString, '.',
	Date today monthIndex printString, ' ',
	Time now hours printString, ':', 
	Time now minutes printString,
	' from ', (self session lastRequest peer notNil ifTrue: [self session lastRequest peer] ifFalse: [''])
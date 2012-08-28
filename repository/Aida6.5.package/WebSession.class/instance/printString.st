private
printString
^'aWebSession
	ip: ', (self lastRequest notNil ifTrue: [self lastRequest peer] ifFalse: ['']), '
	user: ', self user username, ' (', self user nameSurname, ')
	created: ', self created printSloString, '
	last:      ', (self lastRequest notNil ifTrue: [self lastRequest timestamp printSloString] ifFalse: ['']), ''
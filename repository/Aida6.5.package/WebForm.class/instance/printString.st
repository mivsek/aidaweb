private
printString
	^'aWebForm', (self isTopForm ifTrue: [' top '] ifFalse: [' ']), 
			(self isTopFormOnPage ifTrue: ['on page'] ifFalse: ['on popup']), 
		(self id notNil ifTrue: 
			[(String with: Character cr), '     id: ', self id] ifFalse: ['']),
		((self attributesAt: #class)  notNil ifTrue: 
			[(String with: Character cr), '     class: ', self attributesAt: #class ] ifFalse: ['']),
		(String with: Character cr), '     valid: ', self isValid printString,
		(String with: Character cr), '     fields: ', (self fields size - 2) printString,
		(String with: Character cr), '     superform: ', (self superform isNil ifTrue: ['nil'] ifFalse: ['aWebForm']),
		(String with: Character cr), '     subforms: ', self subforms size printString,
		(String with: Character cr), '     parent: ', self parent printString
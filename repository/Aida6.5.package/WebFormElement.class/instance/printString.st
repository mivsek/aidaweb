private
printString
	"Squeak specific"
	^'a', self class printString, 
		(self id notNil ifTrue: 
			[(String with: Character cr), '     id: ', self id] ifFalse: ['']),
		((self attributesAt: #class)  notNil ifTrue: 
			[(String with: Character cr), '     class: ', (self attributesAt: #class) printString ] ifFalse: ['']),
		(self name notNil ifTrue: 
			[(String with: Character cr), '     name: ', self name] ifFalse: ['']),
		(String with: Character cr), '     value: ' , 
			(self value printString truncateWithElipsisTo:  30),  "Squeak specific"
		(String with: Character cr), '     buffered: ' , 
			(self adaptor buffer printString truncateWithElipsisTo: 30),  "Squeak specific"
		(String with: Character cr), '     changed: ', self adaptor changed printString,
		(String with: Character cr), '     valid: ', self isValid printString
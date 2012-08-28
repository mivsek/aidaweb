private
addSessionIdTo: aString on: aSession
	"for connection of secure seesion to nonsecure one"
	| url |
	aSession hasSecureCookie ifTrue: [^aString].
	url := (aString includes: $? ) ifTrue: [aString, '&'] ifFalse: [aString, '?'].
	^url, 'sessionId=', aSession id printString.
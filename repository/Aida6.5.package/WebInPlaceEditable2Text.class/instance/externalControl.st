private
externalControl
	"Scriptaculous specific"
	| idSymbol |
	self triggerElement isNil ifTrue: [^''].
	idSymbol := self triggerElement isSymbol 
		ifTrue: [self triggerElement] ifFalse: [self triggerElement ensureId. self triggerElement id].
	^', externalControl:''', idSymbol asString, ''''